   M S B A M L   `   `   `  ����@  <Tovar, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Tovar.View
Tovar.View  5   	   1clr-namespace:Tovar.ViewModelTovar.ViewModel  5   	   3clr-namespace:Tovar.ComponentsTovar.Components  5   	   $    Tovar.View.AuthorizationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Tovar.View     5   	   3	viewmodelclr-namespace:Tovar.ViewModel     5   	   5
componentsclr-namespace:Tovar.Components     5   	     � Title$  AuthorizationWindow��5
   	   $	��500��6%   $	��350��62    � DataContext 5      ,   &Tovar.ViewModel.AuthorizationViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��/Assets/Images/logo.png��6   $	��180��61   $
��0 20q�6=   �� 5   
   $��1��6   $	��250��6"    �� Orientation$ Vertical=�6.   .+�5      �� $��
Логин��6   �� 5      $��25��6d   ��6   ��  �� Path$ Login� �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6d   5      �� 5   
   $��2��6   $	��250��6"   $ Vertical=�6.   .+�5      �� $��Пароль��6   )   #Tovar.Components.BindablePaswordBox  5      $��25��6�      Password 6,   �� $ Password�$ PropertyChanged=�$ TwoWay=�6�   �� 5      $��
Войти��6   $��Right=�6K   ��6%   �� $ LoginCommand�6K   5       5#      5$      