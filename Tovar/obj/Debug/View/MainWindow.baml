   M S B A M L   `   `   `  ����@  <Tovar, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Tovar.View
Tovar.View  5   	   'clr-namespace:Tovar.Core
Tovar.Core  5   	       Tovar.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Tovar.View     5   	   )coreclr-namespace:Tovar.Core     5   	     � Title$  
MainWindow��5	   	   $	��700��6   $	��800��6)   .��5
      �  � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $
��auto �6   .+�5   
   �� �� 5   
   -   5         ��Name$ UserName��5      $��Right=�5      $��Center=�5      $��6q�5      �� 5      $�Имя��6    �� 5      �6   �� %   Tovar.Core.CurrentUserSingleton   CurrentUser �� Source# Z  �� Path$ 	FirstName��� 5      �� 5      $�Фамилия��6    �� 5      �6   �� # Z $ LastName��� 5      �� 5      $�Отчество��6    �� 5      �6   �� # Z $ 
fatherName�5      5       5!      