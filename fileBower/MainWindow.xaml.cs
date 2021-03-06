﻿using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Forms;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.ComponentModel;

namespace fileBower
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        FileList gf;
        Collection<FileName> buffList = null;
        Visibilable visibilable;
        public MainWindow()
        {
            InitializeComponent();

            ProCount();
            visibilable = (Visibilable)this.FindResource("visi");

            ShowInTaskbar = false;
            this.Topmost = true;

            winHide wh = new winHide(this);
            wh.start();
            this.MouseLeftButtonDown += MainWindow_MouseLeftButtonDown;

            gf = new FileList();

            buffList = gf.GetList();
            listbox1.ItemsSource = buffList;
        }

        //鼠标按住上方拖动事件
        private void MainWindow_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //throw new NotImplementedException();
            Point point = Mouse.GetPosition(this);
            if (point.Y <= 25)
            {
                if (e.LeftButton == MouseButtonState.Pressed)
                {
                    this.DragMove();
                }
            }
        }

        //点击文件夹按钮的事件
        private void Click1(object sender, RoutedEventArgs e)
        {

            FolderBrowserDialog fd = new FolderBrowserDialog();
            if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string[] s = fd.SelectedPath.Split('\\');
                gf.setFile(fd.SelectedPath, s[s.Length - 1]);
            }
        }

        //点击listbox里面的元素的事件
        private void StackPanel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            StackPanel sp = (StackPanel)sender;
            TextBlock tb = (TextBlock)sp.Children[1];
            Process.Start("Explorer", tb.Text);
        }

        //点击关闭按钮事件
        private void Closeclick(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        //加载窗体事件
        private void Win_loaded(object sender, RoutedEventArgs e)
        {

            FileStream fs = null;
            try
            {
                fs = new FileStream("C.dat", FileMode.Open);
                BinaryFormatter bf = new BinaryFormatter();
                gf = (FileList)bf.Deserialize(fs);
                fs.Close();
            }
            catch
            {
            }
            finally
            {
                buffList = gf.GetList();
                listbox1.ItemsSource = buffList;
            }
            this.Left = gf.Left;
            this.Top = gf.Top;
        }

        //窗体关闭事件
        private void Win_closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            FileStream fs = new FileStream("C.dat", FileMode.Create);
            BinaryFormatter bf = new BinaryFormatter();
            gf.Left = this.Left;
            gf.Top = this.Top;
            try
            {
                bf.Serialize(fs, gf);
            }
            catch
            {
                System.Windows.MessageBox.Show("序列化失败");
                throw;
            }
            finally
            {
                fs.Close();
            }



        }

        //打开资源管理器按钮事件
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("Explorer");
        }


        //每个列表相的删除按钮事件
        private void DeClick(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.Button button = (System.Windows.Controls.Button)sender;
            Grid panel = (Grid)button.Parent;
            StackPanel stackPanel = (StackPanel)panel.Children[0];
            TextBlock textBlock = (TextBlock)stackPanel.Children[1];
            string filename = textBlock.Text;
            foreach (FileName file in buffList)
            {
                if (file.Filename == filename)
                {
                    buffList.Remove(file);
                    break;
                }
            }
        }

        //防止两次启动
        private void ProCount()
        {
            int count = 0;
            //检测进程是否存在
            Process[] processList = Process.GetProcesses();
            Process processKill = null;
            foreach (Process process in processList)
            {
                if (process.ProcessName == "fileBower")
                {
                    count++;
                    processKill = process;
                }
            }
            if (count > 1)
            {
                processKill.Kill();
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (visibilable.Vi == "Visible")
            {
                visibilable.Vi = "Hidden";
                visibilable.StackState = "true";
                visibilable.ItemColor = "white";
            }
            else
            {
                visibilable.Vi = "Visible";
                visibilable.StackState = "false";
                visibilable.ItemColor = "gray";
            }                
        }
    }
}
