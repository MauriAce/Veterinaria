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
using Veterinaria.Model;

namespace Veterinaria.View
{
    /// <summary>
    /// Lógica de interacción para CustomerView.xaml
    /// </summary>
    public partial class CustomerView : UserControl
    {
        public static Frame StaticMainFrame;
      //  private Frame MainFrame;

        public CustomerView()
        {
            InitializeComponent();
            Refresh();
         //   StaticMainFrame = MainFrame;
        }

        

        private void Button_Click(object sender, RoutedEventArgs e)
        {
           // CustomerView.StaticMainFrame.Content = new formulario();
            // CustomerView.StaticMainFrame.Content = new formulario();
            //  MainView.StaticMainFrame.Content = new formulario();
        }
        // carga de datos
        private void Refresh()
        {

            List<PersonViewModel> lst = new List<PersonViewModel>();
            using (Model.wpfcrudEntities2 db = new Model.wpfcrudEntities2())
            {
                lst = (from d in db.cliente
                       select new PersonViewModel
                       {
                           Id = d.id,
                          Nombre = d.nombre,
                           Apellido = d.apellido,
                           Telefono = d.telefono,
                           Mail = d.mail,
                           Direccion = d.direccion,


                       }).ToList();


            }

            DG.ItemsSource = lst;
        }

        // inicio botones eliminar editar
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            int Id = (int)((Button)sender).CommandParameter;

            using (Model.wpfcrudEntities2 db = new Model.wpfcrudEntities2())
            {
                var oPerson = db.cliente.Find(Id);

                db.cliente.Remove(oPerson);
                db.SaveChanges();
            }

            Refresh();
        }

        private void Button_Editar(object sender, RoutedEventArgs e)
        {

           // int Id = (int)((Button)sender).CommandParameter;

          //  Formulario pFormulario = new Formulario(Id);

          //  MainWindow.StaticMainFrame.Content = pFormulario;

            // MainWindow.StaticMainFrame.Content = pFormulario;
            // Command="{Binding  ShowSettingsViewCommand}"
        }
        //fin

    }

    public class PersonViewModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int? Telefono { get; set; }
        public string Mail { get; set; }
        public string Direccion { get; set; }
       
    }
}

