using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Restaurant
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'restaurantDataSet1.TypeFood' table. You can move, or remove it, as needed.
            this.typeFoodTableAdapter.Fill(this.restaurantDataSet1.TypeFood);
            // TODO: This line of code loads data into the 'restaurantDataSet.Food' table. You can move, or remove it, as needed.
            this.foodTableAdapter.Fill(this.restaurantDataSet.Food);
            // TODO: This line of code loads data into the 'restaurantDataSet.Cater' table. You can move, or remove it, as needed.
            this.caterTableAdapter.Fill(this.restaurantDataSet.Cater);
            // TODO: This line of code loads data into the 'restaurantDataSet.Caterer' table. You can move, or remove it, as needed.
            this.catererTableAdapter.Fill(this.restaurantDataSet.Caterer);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void продуктіToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void блюдаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bindingNavigator1.BindingSource = foodBindingSource;
            dataGridView1.DataSource = "foodBindingSource";
            MessageBox.Show(dataGridView1.DataSource.ToString());
            dataGridView1.BackgroundColor = Color.LimeGreen;
            dataGridView1.Refresh();
        }

        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void редакторЗапросовToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var qe = new QueryEdit();
            qe.Show();

        }
    }
}
