using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CppQuiz
{
    /// <summary>
    /// Interaction logic for Dot.xaml
    /// </summary>
    public partial class Dot : UserControl
    {
        public Dot()
        {
            InitializeComponent();
        }

        private void UserControl_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

        }


        public void OnGotDirty(RoutedEventArgs e)
        {

        }


        public event RoutedEventHandler GotDirty;


        public bool IsSelected
        {
            get { return (bool)GetValue(IsSelectedProperty);
                
               
            }
            set { SetValue(IsSelectedProperty, value);


                if (value)
                {
                    ((Storyboard)Resources["Augment"]).Begin();
                }
                else
                {
                    ((Storyboard)Resources["Augment"]).Stop();
                    ((Storyboard)Resources["Diminish"]).Begin();

                }
            }
        }

        // Using a DependencyProperty as the backing store for IsSelected.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsSelectedProperty =
            DependencyProperty.Register("IsSelected", typeof(bool), typeof(Dot), new PropertyMetadata(false));


       

        public bool IsDirty
        {
            get { return (bool)GetValue(IsDirtyProperty); }
            set { SetValue(IsDirtyProperty, value);
                if (value)
                {
                    ((Storyboard)Resources["ShowDot"]).Begin();
                }
                else
                {
                    ((Storyboard)Resources["HideDot"]).Begin();

                }
            }
        }

        // Using a DependencyProperty as the backing store for IsDirty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsDirtyProperty =
            DependencyProperty.Register("IsDirty", typeof(bool), typeof(Dot), new PropertyMetadata(false));



    }
}
