using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Марафон
{
    public partial class Авторизация_бегуна : Form
    {
        public static Авторизация_бегуна PUSER { get; set; }
        public static User us { get; set; }
        Model1 db = new Model1();
        int count = 0;
        public Авторизация_бегуна()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //кнопка перехода обратно в начальную форму
            Hide();
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            User us = db.User.Find(textBox1.Text);   
            if (count < 4)
            {
                if (textBox1.Text != "" && textBox2.Text != "")//проверка на пустые поля 
                {
                    if (us !=null && us.Password==textBox2.Text)
                    {
                        if (us.RoleId == "R")
                        {
                            Hide();
                            MessageBox.Show("Бегун авторизован");
                            Меню_бегуна бг = new Меню_бегуна();
                            бг.ShowDialog();
                            Close();
                        }

                    }
                }
                else
                {
                    MessageBox.Show("Логин или пароль не заполнен");
                    count++;
                }
            }
            else
            {
                MessageBox.Show("Количесто попыток на вход превышенно");
                Close();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //кнопка отметы входа
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }

        private void Авторизация_бегуна_Load(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = true;
        }
    }
}
