   M S B A M L   `   `   `  ����D  @fileBower, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:fileBower	fileBower  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       fileBower.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:fileBower     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	   -   5          � Title$  
MainWindow��5	   	   $��452.257��6   $	��260��6-    � WindowStyle$
 None=�69    � AllowsTransparency .  � 	Resources 5
       �� MergedDictionaries �� Source   FileBox �� 
TargetType ��Name �� Padding	 J� SnapsToDevicePixels   ScrollViewerControlTemplate1   fileBower.Visibilable  visi�� 5   
    5      �� 5      $ FileBoxStyle.xaml?�6%   %�   &	        7  &	 �     �� 5      " ��6.   .R�5      �� $ Bd��6   #��z��6%   #��z��6Q   #��z��6�   $ 1q�6�   	 . ._�5      �� |�.  #��z��65   8��  .��5      �� #	 z	 6)   5      5      5        5      6    5      .��5      � -   5        
 �Name$
 grid2��5   "   ���	#FF1B1B1B.+�5    
   � -   5        $��grid1��5    n   $��	10,48,0,0q�6   $	��371��6"   $	��Top=�6/   $
��Left=�6G   $	��240��6b   .+�5!      �� -   5         ��Name$ listbox1��5!      ���	#FF292929
�������$��Disabled=�6i   #��[  6�   ��6?   Z� ��5"      �� 5#      .R�5$      � .+�5%      �� -   5        $	��220��5%   ^   $��45��6j   {�6v   ��  �� Source# [  �� Path$ 
StackState�.+�5&   "   �� $��30��6O   $
��auto��6[   $��18(�6h   ��6,   �� *FileNameLastName+��6v   �� # [ $ 	ItemColor��� 5'   "   $
��auto��6F   $��9(�6S   ��6,   �� *
Filename+��6`   �� # [ $ 	ItemColor�5(      �� 5)      -   5        $��删除��5)   %   $��40��63   $��20��6>   $
��Left=�6J   $	��Top=�6e     MyButton#��[ 5*   %   $��	180,0,0,0q�6�   ��5)   �   Z� ��6�   Z� y�5*   G   �� # [ $ Vi���5+   "   �� 5,   &    j� Stretch$ Uniform=�61    �� ImageSource$ img\close.png��6C   5.      5/      50      52      53      �� 54   
   -   5        $��选择文件夹��54      $
��Left=�6!   $��173,424,0,0q�6<   $	��Top=�6Q   $��77��6i   $��23��6t   
�������#��[ 55      ��54   �   Z� ��6�   Z� 55      �� 56   
   -   5        $��关闭��56      $
��Left=�6   $��
202,10,0,0q�69   $	��Top=�6M   $��48��6e   $��23��6p   
�������#��[ 57      ��56   �   Z� ��6�   Z� 57      �� 58   
   -	   5        $��打开资源管理器��58      $
��Left=�6#   $��
10,424,0,0q�6>   $	��Top=�6R   $	��102��6j   $��23��6v   
�������#��[ 59      ��58   �   Z� ��6�   Z� 59      �� 5:   
   -
   5        $��编辑��5:      $
��Left=�6   $��	10,10,0,0q�69   $	��Top=�6L   $��46��6d   #��[ 6�   $��23��6�   
�������6�   5;      5<      