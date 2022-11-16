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
using Veterinaria.View;

namespace Veterinaria
{
    /// <summary>
    /// Lógica de interacción para formulario.xaml
    /// </summary>
    public partial class formulario : Page
    {
        public int Id = 0;
        public formulario(int Id = 0)
        {
            InitializeComponent();

            this.Id = Id;
            if (this.Id != 0)
            {
                using (Model.wpfcrudEntities2 db = new Model.wpfcrudEntities2())
                {
                    var oPerson = db.cliente.Find(this.Id);
                    txtnombre.Text = oPerson.nombre;
                    txtapellido.Text = oPerson.apellido;
                    txttelefono.Text = oPerson.telefono.ToString();
                    txtmail.Text = oPerson.mail;
                    txtdireccion.Text = oPerson.direccion;
                }
            }
        }
        //
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (Id == 0)
            {
                using (Model.wpfcrudEntities2 db = new Model.wpfcrudEntities2())
                {
                    var oPerson = new Model.cliente();
                    oPerson.nombre = txtnombre.Text;
                    oPerson.apellido = txtapellido.Text;
                    oPerson.telefono = int.Parse(txttelefono.Text);
                    oPerson.mail = txtmail.Text;
                    oPerson.direccion=txtdireccion.Text;

                    db.cliente.Add(oPerson);
                    db.SaveChanges();

                    CustomerView.StaticMainFrame.Content = new CustomerView();
                }
            }
            
        }
        //
    }
}
