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
    public partial class Регистрация_нового_бегуна : Form
    {
        Model1 db = new Model1();
        User us = new User();
        public Регистрация_нового_бегуна()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "" && textBox2.Text != "" && textBox4.Text != "" && textBox5.Text != "")
            {
                us.Email = textBox1.Text;
                us.Password = textBox2.Text;
                us.FirstName = textBox4.Text;
                us.LastName = textBox5.Text;
                db.User.Add(us);
                db.SaveChanges();
            }
            else
            {
                MessageBox.Show("Имеются пустые поля");
            }
        }

        private void Регистрация_нового_бегуна_Load(object sender, EventArgs e)
        {
            textBox2.UseSystemPasswordChar = true;
            textBox3.UseSystemPasswordChar = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Hide();
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }
    }
}
