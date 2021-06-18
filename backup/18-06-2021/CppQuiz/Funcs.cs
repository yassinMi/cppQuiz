using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Media;

namespace CppQuiz
{
    public static class Funcs
    {

        /// <summary>
        /// search in the quizzes dir for valid quizzes files, and retrives a list of name,QuestionsCout pairs
        /// </summary>
        /// <returns></returns>
        public static List< QuizHeader> FindQuizzes()
        {
            List<QuizHeader> outp = new List<QuizHeader>();

            var allFiles =  Directory.GetFiles(MI.QUIZZES_PATH, "*.cqw");
            foreach (var item in allFiles)
            {
                KeyValuePair<string, int> res;
                if(ValidateCQW( item,out res)){
                    outp.Add(new QuizHeader() {  fullPath = item, Name = res.Key, QuestionsCount = res.Value});
                }
            }

            return outp;

        }

        /// <summary>
        /// this works with FindQuizzes, this is not the main cqw parser , as it only retrives 3 pieces of information: 
        /// name and numberQfQuestions, and whether the file meets two standartds: have a numbr of //MI .. tags greater that 1 and the maximum index eqals the number of tags
        /// </summary>
        private static bool ValidateCQW(string filePath, out KeyValuePair<string, int> Res)
        {
            string name = Path.GetFileNameWithoutExtension(filePath);
            string content = File.ReadAllText(filePath);
            var matches = Regex.Matches(content, "//MI (..)");
            List<int> indices = new List<int>();
            foreach (Match m in matches)
            {
                try
                {
                    indices.Add(int.Parse(m.Groups[1].Value));
                }
                catch (Exception)
                {

                }
            }
            int maxIndex;
            if ((indices.Count > 1) && (indices.Count == (maxIndex=indices.Max())))
            {
                
                    Res = new KeyValuePair<string, int>(name, maxIndex);
                    return true;
                
               
            }
            else
            {
                Res = new KeyValuePair<string, int>(name,-1);
                return false;
            }
           

        }


    }





    public class CodeToDoc : IValueConverter

    {
        enum RunType { normal, str, keyword, oprator }
        struct Segment
        {
            public RunType Type;
            public string content;
            public int startIndex;


        }
        List<Segment> segments;
        List<int> splitIndices; //a split index is located between two different RunTypes
        static List<string> reservedWords = new List<string> { "alignas", "alignof", "and", "and_eq", "asm", "auto", "bitand", "bitor", "bool", "break", "case", "catch", "char", "char16_t", "char32_t", "class", "compl", "const", "constexpr", "const_cast", "continue", "decltype", "default", "delete", "do", "double", "dynamic_cast", "else", "enum", "explicit", "export", "extern", "false", "float", "for", "friend", "goto", "if", "inline", "int", "long", "mutable", "namespace", "new", "noexcept", "not", "not_eq", "nullptr", "operator", "or", "or_eq", "private", "protected", "public", "register", "reinterpret_cast", "return", "short", "signed", "sizeof", "static", "static_assert", "static_cast", "struct", "switch", "template", "this", "thread_local", "throw", "true", "try", "typedef", "typeid", "typename", "union", "unsigned", "using", "virtual", "void", "volatile", "wchar_t", "while", "xor", "xor_eq" };

        List<Segment> findKeySegments(string raw)
        {
            List<Segment> keySegs = new List<Segment>();
            var matches = Regex.Matches(raw, "(\\w)+");
            foreach (Match word in matches)
            {
                if (reservedWords.Contains(word.Value))
                {
                    keySegs.Add(new Segment() { content = word.Value, startIndex = word.Index, Type = RunType.keyword });
                }
            }
            return keySegs;

        }
        List<Segment> findStrSegments(string raw)
        {
            List<Segment> StrSegs = new List<Segment>();
            var matches = Regex.Matches(raw, "\".*?\""); //matches all literal strings
            foreach (Match word in matches)
            {
                StrSegs.Add(new Segment() { content = word.Value, startIndex = word.Index, Type = RunType.str });
            }
            return StrSegs;

        }

        List<Segment> assembleSegments(List<Segment> sortedSegments, string raw)
        {
            List<Segment> normalizedSegments = new List<Segment>();
            //normalize the list of segments : add white segments to fill gapes, make every segment adjacent to the previous one, and remove collisions is any
            int currentIndex = 0;
            foreach (Segment seg in sortedSegments)
            {
                if (currentIndex < seg.startIndex)
                {
                    //add white segment
                    normalizedSegments.Add(new Segment()
                    {
                        Type = RunType.normal,
                        content = raw.Substring(currentIndex, seg.startIndex - currentIndex),
                        startIndex = currentIndex

                    });
                    currentIndex = seg.startIndex;

                }
                if (currentIndex == seg.startIndex)
                {
                    //add the special segment
                    normalizedSegments.Add(seg);
                    currentIndex += seg.content.Length;

                }
                if (currentIndex > seg.startIndex)
                {
                    //ommit segment, happens on collission(e,g a string literal contains a reserved word)
                    //next
                    continue;
                }
            }


            //adding the last normal segment if needed
            if (currentIndex < raw.Length - 1)
            {
                normalizedSegments.Add(new Segment()
                {
                    Type = RunType.normal,
                    content = raw.Substring(currentIndex),
                    startIndex = currentIndex

                });

            }

            return normalizedSegments;
        }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string codeStr = (string)value;
            FlowDocument doc = new FlowDocument(new Paragraph(new Run(codeStr)));
            //only 4 types of runs are spported: normal; operator, keyWord, string
            //raw text is first split into segments, each segment has a type
            //then all segments are rendered into one document
            List<Segment> segs = new List<Segment>();
            segs.AddRange(findStrSegments(codeStr));
            segs.AddRange(findKeySegments(codeStr));
            segs.Sort(((a, b) => ((a.startIndex > b.startIndex) ? 1 : (a.startIndex < b.startIndex) ? -1 : 0)));
            List<Segment> Normalizedsegs = assembleSegments(segs, codeStr);

            doc = renderNormalizedSegs(Normalizedsegs);

            doc.LineHeight = 18;



            return doc;
        }

        private System.Windows.Media.Brush getBrush(RunType type)
        {
            switch (type)
            {
                case RunType.normal:
                    return new SolidColorBrush(Colors.WhiteSmoke);
                case RunType.str:
                    return new SolidColorBrush(Colors.Salmon);
                case RunType.keyword:
                    return new SolidColorBrush(Colors.SteelBlue);
                case RunType.oprator:
                    return new SolidColorBrush(Colors.LightSeaGreen);
                default:
                    return new SolidColorBrush(Colors.WhiteSmoke);
            }
        }
        private FlowDocument renderNormalizedSegs(List<Segment> normalizedsegs)
        {
            FlowDocument doc = new FlowDocument(new Paragraph());
            foreach (Segment seg in normalizedsegs)
            {
                ((Paragraph)doc.Blocks.FirstBlock).Inlines.Add(new Run(seg.content) { Foreground = getBrush(seg.Type) });
            }


            return doc;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    // used in xaml design time only
    public struct QuizHeader
    {
        public string Name { get; set; }
        public int QuestionsCount { get; set; }
        public string fullPath { get; set; }
    }

    public class InvertBoolean : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return !(bool)value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return !(bool)value;
        }
    }

    public class BooleanToVisibilityReversed : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (!(bool)value) ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class EqualityToVisibility : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool equal = value.ToString() == parameter.ToString();
            return equal ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }




    public class EvalToBrush : IValueConverter
    {
        static SolidColorBrush greenBrush = new SolidColorBrush(Color.FromRgb(153, 245, 119));
        static SolidColorBrush redBrush = new SolidColorBrush(Color.FromRgb(245, 131, 77));
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            SolidColorBrush outp;
            Question.QuestionEvaluation val = (Question.QuestionEvaluation)value;
            switch (val)
            {
                case Question.QuestionEvaluation.correct:
                    return greenBrush;
                case Question.QuestionEvaluation.wrong:
                    return redBrush;
                case Question.QuestionEvaluation.skiped:
                    return redBrush;
                default:
                    return redBrush;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }


}
