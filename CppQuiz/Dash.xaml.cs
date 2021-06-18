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
    /// Interaction logic for Dash.xaml
    /// </summary>
    public partial class Dash : UserControl
    {
        public Dash()
        {
            InitializeComponent();
        }









        public string Caption
        {
            get { return (string)GetValue(CaptionProperty); }
            set { SetValue(CaptionProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Caption.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CaptionProperty =
            DependencyProperty.Register("Caption", typeof(string), typeof(Dash), new PropertyMetadata(null));






        public bool IsSelected
        {
            get
            {
                return (bool)GetValue(IsSelectedProperty);


            }
            set
            {
                SetValue(IsSelectedProperty, value);


                if (value)
                {
                    ((Storyboard)Resources["Focus"]).Begin();
                }
                else
                {
                    ((Storyboard)Resources["UnFocus"]).Begin();

                }
            }
        }

        // Using a DependencyProperty as the backing store for IsSelected.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsSelectedProperty =
            DependencyProperty.Register("IsSelected", typeof(bool), typeof(Dash), new PropertyMetadata(false));




        public bool IsDirty
        {
            get { return (bool)GetValue(IsDirtyProperty); }
            set
            {
                SetValue(IsDirtyProperty, value);
                if (value)
                {
                    ((Storyboard)Resources["GetDirty"]).Begin();
                }
                else
                {
                    ((Storyboard)Resources["GetEmpty"]).Begin();

                }
            }
        }

        // Using a DependencyProperty as the backing store for IsDirty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsDirtyProperty =
            DependencyProperty.Register("IsDirty", typeof(bool), typeof(Dash), new PropertyMetadata(false));



        private void UserControl_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
