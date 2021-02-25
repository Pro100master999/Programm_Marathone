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
    public partial class Форма_выбора_бегуна : Form
    {
        public Форма_выбора_бегуна()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //кнопка вернуться обратно
            Hide();
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //кнопка авторизации бегунов и т.п.
            Hide();
            Авторизация_бегуна ав = new Авторизация_бегуна();
            ав.ShowDialog();
            Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }
    }
}
