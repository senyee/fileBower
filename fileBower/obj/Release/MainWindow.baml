   M S B A M L   `   `   `  ���� D  @fileBower, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:fileBower	fileBower  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     fileBower.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:fileBower     9System&clr-namespace:System;assembly=mscorlib     -     � Title$  
MainWindow��$��452.257��$	��260�� � WindowStyle$
 None=� � AllowsTransparency .  � 	Resources  �� MergedDictionaries �� Source   FileBox �� 
TargetType ��Name �� Padding	 J� SnapsToDevicePixels   ScrollViewerControlTemplate1   fileBower.Visibilable  visi��  �� $ FileBoxStyle.xaml?�%�   &	        7  &	 i     �� " ��.R��� $ Bd��#��z��#��z��#��z��$ 1q�	 . ._��� |�.  #��z��8��  .���� #	 z	   .��� -   
 �Name$
 grid2�����	#FF1B1B1B.+�� -   $��grid1��$��	10,48,0,0q�$	��371��$	��Top=�$
��Left=�$	��240��.+��� -    ��Name$ listbox1�����	#FF292929
�������$��Disabled=�#��[  ��Z� ���� .R�� .+��� -   $	��220��$��45��{���  �� Source# [  �� Path$ 
StackState�.+��� $��30��$
��auto��$��18(����� *FileNameLastName+���� # [ $ 	ItemColor��� $
��auto��$��9(����� *
Filename+���� # [ $ 	ItemColor��� -   $��删除��$��40��$��20��$
��Left=�$	��Top=�  MyButton#��[ $��	180,0,0,0q���Z� ��Z� y��� # [ $ Vi�����  j� Stretch$ Uniform=� �� ImageSource$ img\close.png���� -   $��选择文件夹��$
��Left=�$��173,424,0,0q�$	��Top=�$��77��$��23��
�������#��[ ��Z� ��Z� �� -   $��关闭��$
��Left=�$��
202,10,0,0q�$	��Top=�$��48��$��23��
�������#��[ ��Z� ��Z� �� -	   $��打开资源管理器��$
��Left=�$��
10,424,0,0q�$	��Top=�$	��102��$��23��
�������#��[ ��Z� ��Z� �� -
   $��编辑��$
��Left=�$��	10,10,0,0q�$	��Top=�$��46��#��[ $��23��
�������