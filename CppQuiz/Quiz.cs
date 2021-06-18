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
    public class Quiz : INotifyPropertyChanged
    {
        private string name;
        public string Name { get { return name; } set { name = value; notif(nameof(Name)); } }
        public List<Question> Questions { get; set; }


        public bool CanEvaluate
        {
            get
            {
                return !(isEvaluating || IsEvaluated);
            }
        }

        private bool isEvaluated;
        public bool IsEvaluated
        {
            set { isEvaluated = value; notif(nameof(IsEvaluated)); }
            get { return isEvaluated; }
        }


       
        private int currentIndex;
        private bool isEvaluating; //prevent evaluaing two times sumiltaneously


        private QuizEvaluationProgress evaluationProgress = new QuizEvaluationProgress();
        public QuizEvaluationProgress EvaluationProgress
        {
            set { evaluationProgress = value; notif(nameof(EvaluationProgress)); }
            get { return evaluationProgress; }
        }



        public int CurrentIndex { get {
                return currentIndex;
            } set {
                currentIndex = value;
                notif(nameof(CurrentIndex));
                notif(nameof(CurrentIndexInc));
            } }


        public int CurrentIndexInc { get { return CurrentIndex + 1; } }


        private score score;
        public score Score
        {
            set { score = value; notif(nameof(Score)); }
            get { return score; }
        }

        
        public bool SuccessfullyLoaded { get; private set; }

        private void notif(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }



        public Quiz(string QuizDirectory)
        {
            if(LoadQuiz(QuizDirectory))
                this.SuccessfullyLoaded = true;
        }
        public Quiz(string QuizFile,  bool notUsed)
        {
            if (LoadQuizFromFile(QuizFile))
            {
                this.SuccessfullyLoaded = true;
            }
            

        }
        

        public event PropertyChangedEventHandler PropertyChanged;

        public bool LoadQuiz(string QuizDirectory)
        {
            Questions = new List<Question>();
            Trace.Assert(Directory.Exists(QuizDirectory), $"mi Directory '{QuizDirectory}' does not exist!");
            Name = Path.GetDirectoryName(QuizDirectory);
            //loading all qestions from the available cppq files
            List<string> cppqFiles = Directory.EnumerateFiles(QuizDirectory).ToList();
            //make sure files are correctely named
            for(int i = 0; i < cppqFiles.Count; i++)
            {
                string file= cppqFiles.Find((str) => Regex.IsMatch(str,$"0*{i+1}.cppq",  RegexOptions.IgnoreCase));
                if (file == null) throw new Exception($"mi theres no cppq file with index '{(i + 1)}' in the '{QuizDirectory}' folder  ");
                Questions.Add(new Question(File.ReadAllText(file),i+1));
            }

            return true;
        }

        public bool LoadQuizFromFile(string QuizFile)
        {
            Questions = new List<Question>();
            Trace.Assert(File.Exists(QuizFile), $"mi file '{QuizFile}' does not exist!");


            Name = Path.GetFileNameWithoutExtension(QuizFile);
            //loading all qestions from the available cppq files
            string content = File.ReadAllText(QuizFile);
            var matches = Regex.Matches(content, "//MI (\\d\\d?)\r?\n(.*?)\r?\n//END", RegexOptions.Singleline);
            int i = 0;
            foreach (Match m in matches)
            {
               
                int index = int.Parse( m.Groups[1].Value);
                Trace.Assert(i + 1 == index);
                string codePart = m.Groups[2].Value;
                Questions.Add(new Question(codePart, i + 1));
                i++;

            }
           

            return true;
        }
        public bool LoadQuiz(IEnumerable<string> QuestionFiles, string QuizName)
        {
            return true;

        }


        /// <summary>
        /// does the comliling and evaluating, could take a while
        /// </summary>
        /// <returns></returns>
        public async Task<bool> EvaluateQuiz()
        {
            if (isEvaluating) return false;
            isEvaluating = true;
            notif(nameof(CanEvaluate));
            EvaluationProgress.TotalQuestionsCount = Questions.Count;
            EvaluationProgress.EvaluatedQuestionsCount = 0;
            notif(nameof(EvaluationProgress));
            int correct=0, skiped=0, wrong=0;
            foreach (Question q in this.Questions)
            {
                skiped += q.IsAnswered ? 0 : 1;

                await q.Evaluate();
                correct += q.Gain;
                wrong += (q.IsAnswered) && (q.Gain == 0) ? 1 : 0; //todo fix clumsy code
                Debug.WriteLine($"question {q.Index} evaluated");
                EvaluationProgress.EvaluatedQuestionsCount++;
                notif(nameof(EvaluationProgress));
            }

            Score = new score() { Correct = correct, Skiped = skiped, Wrong = wrong, TotalQuestions = Questions.Count };
            IsEvaluated = true;
            isEvaluating = false;
            notif(nameof(CanEvaluate));

            return (correct + skiped + wrong )== Score.TotalQuestions;// checkng

        }

        /// <summary>
        /// resets the quiz to it's fresh state, removing evalyations 
        /// </summary>
        /// <returns></returns>
        public bool RetryQuiz()
        {
            IsEvaluated = false;
            notif(nameof(CanEvaluate));

            Score = new score() { Correct = 0, Skiped = 0, TotalQuestions = Questions.Count };
            foreach (Question q in Questions)
            {
                
                q.UserAnswer = new Answer() { Text = null, WillFailToCompile = false };
                q.isEvaluaated = false;
                q.IsAnswered = false;
            }
            return true;
        }

        public class QuizEvaluationProgress
        {
            public int EvaluatedQuestionsCount { get; set; }
            public int TotalQuestionsCount { get; set; }

            public string AsStr{get{return $"{EvaluatedQuestionsCount}/{TotalQuestionsCount}";}}

            public float Percent { get { return (float)100*EvaluatedQuestionsCount/(float)TotalQuestionsCount; } }
        }
    }
    public struct score
    {
        public int Correct { get; set; }
        public int Wrong { get; set; }
        public int Skiped { get; set; }
        public int TotalQuestions { get; set; }
        public float Arc { get { return (360.0f * Correct) / TotalQuestions; } }

        public float Percent { get { return (100.0f * Correct) / TotalQuestions; } }
        public override string ToString()
        {
            return $"Correct:{Correct} ,Wrong:{Wrong} Skiped:{Skiped}\n percent:{Percent}%";
        }
    }

    public class Answer
    {
        private string text;
        public string Text { get { return text; } set { text = value; } }
        public bool WillFailToCompile { get; set; } = false;


        public Answer()
        {
          
        }
        public static bool operator ==(Answer a, Answer b)

        {
            return (a.Text==b.Text) || (a.WillFailToCompile&&b.WillFailToCompile);
        }
        public static bool operator !=(Answer a,Answer b)
        {
            return !( (a.Text == b.Text) || (a.WillFailToCompile && b.WillFailToCompile));
        }
        public override string ToString()
        {
            return WillFailToCompile ? "Compilation Error" : Text;
        }
    }

    public class Question : INotifyPropertyChanged
    {

        public string Code;
        public Answer UserAnswer { get; set; } = new Answer() {  };
        public Answer CorrectAnswer { get; set; } = new Answer();
        public bool isEvaluaated;

        private QuestionEvaluation evaluation;
        public QuestionEvaluation Evaluation
        {
            set { evaluation = value; notif(nameof(Evaluation)); }
            get { return evaluation; }
        }


        public bool IsAnswered {
            get
            {
                return  (!string.IsNullOrEmpty(UserAnswer.Text)||UserAnswer.WillFailToCompile);
            }
            set {
                    if (DashRef != null)
                        DashRef.IsDirty = IsAnswered;
                }
            
            }


        private void notif(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }


        private int gain;

        public event PropertyChangedEventHandler PropertyChanged;

        public int Gain
        {
            set { gain = value; notif(nameof(Gain)); }
            get { return gain; }
        }


        public FlowDocument CodeDocument { get; set; }
        public int Index { get; internal set; }
        public Dash DashRef { get; internal set; }

        public Question(string v,int ix)
        {
            this.Code = v;
            Index = ix;
            this.CodeDocument =(FlowDocument) ( new CodeToDoc().Convert(Code,typeof(FlowDocument),
                null, CultureInfo.CurrentCulture));
            /* <Run Text="cout"/>
                    <Run Text="&#x3c;&#x3c;" Foreground="#FF4C9DEE"/>
                    <Run Text='"Hello World"' Foreground="#FFE47B4A"/>
                    <Run Text="&#x3c;&#x3c;" Foreground="#FF4C9DEE"/>
                    <Run Text=";" />*/
        }

        public async Task Evaluate()
        {
           // Trace.Assert(isAnswered, "mi: cannot evaluat a question that has no user answer");
            var mRes = await Compiler.GetResult(Code);
           // mRes.Output = mRes.Output.TrimEnd();
            CorrectAnswer.Text = mRes.Output;
            CorrectAnswer.WillFailToCompile = mRes.CompileFailure;
            Debug.WriteLine($"correct answer {CorrectAnswer}");
            Debug.WriteLine($"user answer {UserAnswer}");
            Evaluation = !IsAnswered ? QuestionEvaluation.skiped : (CorrectAnswer == UserAnswer) ? QuestionEvaluation.correct : QuestionEvaluation.wrong;
            Gain =  (Evaluation ==  QuestionEvaluation.correct)? 1 : 0;

            isEvaluaated = true;
        }

        public enum QuestionEvaluation
        {
            correct, wrong, skiped
        }
    }


    public enum View { home, quiz, evaluating, results}






    public class Session :INotifyPropertyChanged
    {
        static MainWindow mw = (MainWindow) App.Current.MainWindow;
        public event PropertyChangedEventHandler PropertyChanged;

        private Quiz currentQuiz;
        public Quiz CurrentQuiz { get { return currentQuiz; } set { currentQuiz = value; notif(nameof(CurrentQuiz)); } }

        private Question currentQuestion;
        public Question CurrentQuestion {
            get {
                return currentQuestion;
            } set {
                currentQuestion = value;
                notif(nameof(CurrentQuestion));
            } }

        private View currentView;
        public View CurrentView
        {
            set { currentView = value; notif(nameof(CurrentView)); }
            get { return currentView; }
        }


        public static string MAIN_PATH { get; internal set; } = Path.GetDirectoryName(
           System.Reflection.Assembly.GetExecutingAssembly().Location);
       
        private void notif(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public void Init()
        {
            
            CurrentView = View.home;
          
            return;
           // CurrentQuiz = new Quiz(@"C:\TOOLS\CppQuiz\CppQuiz\quizzes\precedence\");
            CurrentQuiz = new Quiz(@"C:\TOOLS\CppQuiz\CppQuiz\quizzes\precedence\exluded\Precedence.cqw.cppq", true);
            if (CurrentQuiz.SuccessfullyLoaded == false) return;
            mw.FillNavBar(CurrentQuiz);
            CurrentQuestion = CurrentQuiz.Questions[0];
            mw.UpdateUI();

        }



    }



}
