using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Ookii.Dialogs.Wpf;
using System.Windows.Media.Animation;

namespace CppQuiz
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();


            if(Directory.Exists(MI.TEMP_CPP_FILES)==false)
            Directory.CreateDirectory(MI.TEMP_CPP_FILES);

            mainSession = new Session();
            mainSession.Init();

            DataContext = mainSession;
        }



        public Session mainSession { get; set; }


        public void UpdateUI()
        {
            CodeRTB.Document = mainSession.CurrentQuestion.CodeDocument;
            questionNumberLabel.GetBindingExpression(TextBlock.TextProperty).UpdateTarget();
            int i = 0, selected = mainSession.CurrentQuiz.CurrentIndex;
            setSelectedDash(selected);
            //((Dash)uniGrid.Children[mainSession.CurrentQuiz.CurrentIndex]).IsSelected = true;

        }



        public Question CurrentQuestion
        {
            get { return (Question)GetValue(CurrentQuestionProperty); }
            set { SetValue(CurrentQuestionProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CurrentQuestion.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CurrentQuestionProperty =
            DependencyProperty.Register("CurrentQuestion", typeof(Question), typeof(MainWindow), new PropertyMetadata(null));




        public async void FillNavBar(Quiz quiz)
        {
            
            uniGrid.Children.Clear();
            uniGrid.Columns = quiz.Questions.Count;
            foreach (var quest in quiz.Questions)
            {
                Dash d = new Dash();
                d.Caption = (quest.Index).ToString();
                quest.DashRef = d;
                //     d.IsSelected = false;
                uniGrid.Children.Add(d);
                await Task.Delay(50);
            }
            
           // ((Dash)uniGrid.Children[0]).IsSelected = true;
        }
        private  async void getResButt_Click(object sender, RoutedEventArgs e)
        {
            //dott.IsSelected = !dott.IsSelected;
           // dott.IsDirty = !dott.IsDirty;
            dash1.IsSelected = !dash1.IsSelected;
            return;
            //cout<<"hello yas"<<endl;
            Quiz myQuiz = new Quiz(@"C:\TOOLS\CppQuiz\CppQuiz\quizzes\precedence\");
            MessageBox.Show(myQuiz.Questions.Count.ToString());
            MessageBox.Show(myQuiz.Questions[1].Code);
            string code = myQuiz.Questions[1].Code;
            CodeRTB.Document.Blocks.Add( new Paragraph( new Run(code)));

        }

        private void Dot_GotDirty(object sender, RoutedEventArgs e)
        {

        }

        private async void getResButt_Copy_Click(object sender, RoutedEventArgs e)
        {
            dash1.IsDirty = !dash1.IsDirty;
            uniGrid.Children.Clear();
            uniGrid.Columns = 22;
            for(int i=0; i < 10; i++)
            {
                Dash d = new Dash();
                d.Caption = (i+1).ToString();
           //     d.IsSelected = false;
                uniGrid.Children.Add(d);
                await Task.Delay(50);
            }
            ((Dash)uniGrid.Children[0]).IsSelected = true;

        }


        public async void finishQuiz()
        {
            processingPopup.IsOpen = true;

            bool sucess = await mainSession.CurrentQuiz.EvaluateQuiz();
            processingPopup.IsOpen = false;
            if (!sucess) return;
            //MessageBox.Show(mainSession.CurrentQuiz.Score.ToString());
            ((Storyboard)Resources["AnimateResults"]).Begin();

        }

        private async void nextButton_Click(object sender, RoutedEventArgs e)
        {
            //check limit, 
            if (mainSession.CurrentQuiz.CurrentIndex == mainSession.CurrentQuiz.Questions.Count - 1)
            {
                //act as finish buttong //todo make function for this
               // finishQuiz();

                return;
            }
                mainSession.CurrentQuiz.CurrentIndex+=(mainSession.CurrentQuiz.CurrentIndex < (mainSession.CurrentQuiz.Questions.Count-1) ? 1 : 0);
            mainSession.CurrentQuestion = mainSession.CurrentQuiz.Questions[mainSession.CurrentQuiz.CurrentIndex];
            UpdateUI();
            if (!UserAnswerTB.IsFocused)
                UserAnswerTB.Focus();

        }

        private void backButton_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuiz.CurrentIndex-=(mainSession.CurrentQuiz.CurrentIndex>0?1:0);
            mainSession.CurrentQuestion = mainSession.CurrentQuiz.Questions[mainSession.CurrentQuiz.CurrentIndex];
            UpdateUI();
            if(!UserAnswerTB.IsFocused)
            UserAnswerTB.Focus();

        }

        private void CodeRTB_Loaded(object sender, RoutedEventArgs e)
        {
          
        }

        private void UserAnswerTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            mainSession.CurrentQuestion.UserAnswer.Text = UserAnswerTB.Text;
            mainSession.CurrentQuestion.IsAnswered = true;//  true doesnt go anywher this only updates the durty state
           // mainSession.CurrentQuestion.UserAnswer.Text = UserAnswerTB.Text;
        }

        private void MenuButton_Click(object sender, RoutedEventArgs e)
        {
            menuPopup.IsOpen = true;
            
        }

        public void loadQuizUI()
        {
            if (mainSession.CurrentQuiz.SuccessfullyLoaded == false) return;
            mainSession.CurrentView = View.quiz;
            FillNavBar(mainSession.CurrentQuiz);
            mainSession.CurrentQuestion = mainSession.CurrentQuiz.Questions[0];
            UpdateUI();
        }

        private void loadQuizButton_Click(object sender, RoutedEventArgs e)
        {
            VistaOpenFileDialog dlg = new VistaOpenFileDialog();
            dlg.InitialDirectory = Session.MAIN_PATH + @"\quizzes\";
            dlg.Title = "Open MI CPPQ file";
            dlg.DefaultExt = ".cpqw";
            bool? res = dlg.ShowDialog(this);
            if (res == false)
            {
                return;
            }

            mainSession. CurrentQuiz = new Quiz(dlg.FileName, true);

            loadQuizUI();




        }

        private void aboutButton_Click(object sender, RoutedEventArgs e)
        {
            string about = $@"cpp quiz by Mi 2021
version : {MI.APP_VERSION}
build date: 16-05-2021 10:59 PM
";
            MessageBox.Show(about, "about", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void wontCompileCHK_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuestion.IsAnswered = true;//  true doesnt go anywher this only updates the durty state
        }

        private void Popup_Loaded(object sender, RoutedEventArgs e)
        {
            //processingPopup.HorizontalOffset =- 120;
        }

        void setSelectedDash(int selected)
        {
            int i;
            for (i = 0; i < uniGrid.Children.Count; i++)
            {
                Dash d = (Dash)uniGrid.Children[i];
                if (i != selected)
                {
                    if (d.IsSelected) d.IsSelected = false;
                }
                else
                {
                    if (d.IsSelected == false)
                        d.IsSelected = true;
                }
            }
        }

        private void RetryButton_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuiz.RetryQuiz();
            mainSession.CurrentQuestion = mainSession.CurrentQuiz.Questions.First();
            mainSession.CurrentQuiz.CurrentIndex = 0;
            UpdateUI();
        }

        private void FinishButton_Click(object sender, RoutedEventArgs e)
        {
            finishQuiz();
        }

        private void StartQuizButton_Click(object sender, RoutedEventArgs e)
        {

            if (quizzesCardsList.SelectedItem == null) return;
            string quizFilePath = ((QuizHeader)quizzesCardsList.SelectedItem).fullPath;

            mainSession.CurrentQuiz = new Quiz($@"{quizFilePath}", true);

            loadQuizUI();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuiz = new Quiz($@"{MI.MAIN_PATH}\quizzes\control structures.cqw", true);

            loadQuizUI();
        }

        private void button_Copy2_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuiz = new Quiz($@"{MI.MAIN_PATH}\quizzes\Basics.cqw", true);

            loadQuizUI();
        }

        public void loadQuizzesCards()
        {
            var quizzes = Funcs.FindQuizzes();
            quizzesCardsList.ItemsSource = quizzes;
            foreach (var item in quizzes)
            {
                
            }
        }

        private void HomeButton_Click(object sender, RoutedEventArgs e)
        {
            mainSession.CurrentQuiz = null;
            mainSession.CurrentView = View.home;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            loadQuizzesCards();
        }
    }
}
