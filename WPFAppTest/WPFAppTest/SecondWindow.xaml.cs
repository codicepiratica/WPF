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
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WPFAppTest
{
    /// <summary>
    /// Interaction logic for SecondWindow.xaml
    /// </summary>
    public partial class SecondWindow : Window
    {
        public SecondWindow()
        {
            InitializeComponent();
        }

        public Action CloseAction { get; set; }

        private void Button_Cancel(object sender, EventArgs e)
        {



            MessageBoxResult result = MessageBox.Show("Do you want to close this window?",
                                           "Confirmation",
                                           MessageBoxButton.YesNo,
                                           MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }

        private void Button_Next(object sender, EventArgs e)
        {
            var window = new ThirdWindow();
            window.Show();
            this.Close();
        }
    }
}
