   M S B A M L   `   `   `  ����E  AWPFAppTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WPFAppTest
WPFAppTest  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls 5   	       WPFAppTest.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WPFAppTest     5   	   YControlsDclr-namespace:System.Windows.Controls;assembly=PresentationFramework     5   	     � Title$  Bubble Authentication��5   	   $	��800��6'   $	��450��64   .��5      � 
������� � ColumnDefinitions 5   
   �� 5      $
��354* �6   �� 5      $	��89* �6   .+�5   
   �� $	��Top=�6   $��2��6-   $��0,0,0,0q�6A   
�������$��80��6e   .+�5      �� -   5         ��Name$ BubbleTitle��5      $��Center=�6-   $��Bubble Admin��6J   $��20,20,8.333,10q�6^   $��30(�6v   5      �� 5   
   $��Center=�6   $��2��60   $��0,100,0.333,326.667q�6D   $	��344��6a   .+�5      �� -   5        $ Txb_Username��5      $
��Left=�6.   $��Username��6I   
���p�$��20(�6s   $��20q�6�   �� 5      -   5         ��Name$ Textbox_Username��5      $��Center=�60   $	��400��6M   $��40��6Y   
������� �� TextAlignment$
 Left=�6|   $��20(�6�    �� TextWrapping$ NoWrap=�6�   $��Center=�6�   �� 5      -   5        $ Txb_Password��5      $
��Left=�6.   $��Password��6I   
���p�$��20(�6s   $��20q�6�   �� 5      -   5        $ TextBox_Password��5      $��Center=�60   $	��400��6M   $��40��6Y   
�������$
 Left=�6|   $��20(�6�   �� 5      -   5         ��Name$ Chb_ForgotPass��5      $��Show password��6/    d� 	IsChecked$ FalseY�6G   $��14(�6Y   $��20q�6g   �� 5      -   5        $��120px��5   *   $��Login��68   $��20(�6H   $��	0,20,0,20q�6V   5       5#      5$      