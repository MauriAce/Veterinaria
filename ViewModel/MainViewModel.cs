using FontAwesome.Sharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Veterinaria.Model;
using Veterinaria.Repositories;

namespace Veterinaria.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        //Fields
        private UserAccountModel _currentUserAccount;
        private ViewModelBase _currentChildView;
        private string _caption;
        private IconChar _icon;
        private IUserRepository userRepository;

        public UserAccountModel CurrentUserAccount 
        {
            get { return _currentUserAccount; }
            set
            {
                _currentUserAccount = value;
                OnPropertyChanged(nameof(CurrentUserAccount));
            }
        }

        // Properties
        public ViewModelBase CurrentChildView
        {
            get { return _currentChildView; }
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }
        public string Caption
        {
            get { return _caption; }
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }
        public IconChar Icon
        {
            get { return _icon; }
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }

        //Commands
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowCustomerViewCommand { get; }
        public ICommand ShowCalendarViewCommand { get; }
        public ICommand ShowSettingsViewCommand { get; }
        public MainViewModel()
        {
            userRepository = new UserRepository();
            CurrentUserAccount = new UserAccountModel();

            //Initializa commands
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowCustomerViewCommand = new ViewModelCommand(ExecuteShowCustomerViewCommand);
            ShowCalendarViewCommand = new ViewModelCommand(ExecuteShowCalendarViewCommand);
            ShowSettingsViewCommand = new ViewModelCommand(ExecuteShowSettingsViewCommand);

            //Default View
            ExecuteShowHomeViewCommand(null);

            LoadCurrentUserData();
        }

        private void ExecuteShowSettingsViewCommand(object obj)
        {
            CurrentChildView = new SettingsViewModel();
            Caption = "Nuevo Cliente";
            Icon = IconChar.Tools;
        }

        private void ExecuteShowCalendarViewCommand(object obj)
        {
            CurrentChildView = new CalendarViewModel();
            Caption = "Turnos";
            Icon = IconChar.CalendarDays;
        }

        private void ExecuteShowCustomerViewCommand(object obj)
        {
            CurrentChildView = new CustomerViewModel();
            Caption = "Clientes";
            Icon = IconChar.UserGroup;
        }

        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Inicio";
            Icon = IconChar.Home;
        }

        private void LoadCurrentUserData()
        {
            var user = userRepository.GetByUserName(Thread.CurrentPrincipal.Identity.Name);
            if (user != null)
            {
                {
                    CurrentUserAccount.Username = user.UserName;
                    CurrentUserAccount.DisplayName = $"{user.Name} {user.LastName}";
                    CurrentUserAccount.ProfilePicture = null;
                };
            }
            else
            {
                CurrentUserAccount.DisplayName="Usuario invalido, no se encuentra logueado";
                //Hide child views
            }
        }
    }
}
