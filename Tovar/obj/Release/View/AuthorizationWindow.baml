   M S B A M L   `   `   `  ���� @  <Tovar, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Tovar.View
Tovar.View  1clr-namespace:Tovar.ViewModelTovar.ViewModel  3clr-namespace:Tovar.ComponentsTovar.Components  $    Tovar.View.AuthorizationWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:Tovar.View     3	viewmodelclr-namespace:Tovar.ViewModel     5
componentsclr-namespace:Tovar.Components       � Title$  AuthorizationWindow��$	��500��$	��350�� � DataContext ,   &Tovar.ViewModel.AuthorizationViewModel  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� $��/Assets/Images/logo.png��$	��180��$
��0 20q��� $��1��$	��250�� �� Orientation$ Vertical=�.+��� $��
Логин���� $��25������  �� Path$ Login� �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� $��2��$	��250��$ Vertical=�.+��� $��Пароль��)   #Tovar.Components.BindablePaswordBox  $��25��   Password �� $ Password�$ PropertyChanged=�$ TwoWay=��� $��
Войти��$��Right=����� $ LoginCommand�