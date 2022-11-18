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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Veterinaria.View
{
    /// <summary>
    /// Lógica de interacción para CalendarView.xaml
    /// </summary>
    public partial class CalendarView : UserControl
    {
        public CalendarView()
        {
            InitializeComponent();
        }
        //
                    public static object StaticMainFrame { get; internal set; }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            
                using (Model.wpfcrudEntities3 db1 = new Model.wpfcrudEntities3())
                {
                    var oPerson = new Model.turno();
                    oPerson.cliente = cliente.Text;
                    oPerson.fecha = fecha.Text;                    
                    oPerson.servicio = servicio.Text;
                    

                    db1.turno.Add(oPerson);
                    db1.SaveChanges();

                    
                
            }
        }


        // 
    }
}
