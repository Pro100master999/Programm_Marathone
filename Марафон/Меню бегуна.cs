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
    public partial class Меню_бегуна : Form
    {
        public Меню_бегуна()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //Кнопка выхода из аккаунта
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Кнопка возвращения на главное меню
            Form1 fr = new Form1();
            fr.ShowDialog();
            Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //Кнопка отображения контактов
            MessageBox.Show("Для получения дополнительной информации \nпожалуйста свяжитесь с координаторами\nТелефон: +55 11 9988 7766\nEmail: cooridnators@marathonskills.org");
        }
    }
}
