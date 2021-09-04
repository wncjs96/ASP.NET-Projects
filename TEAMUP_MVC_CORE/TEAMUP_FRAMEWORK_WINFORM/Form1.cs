using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TEAMUP_FRAMEWORK_MVC
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin" && txtPassword.Text == "1234")
            {
                MessageBox.Show("로그인 성공", "성공");
            }
            else
            {
                MessageBox.Show("로그인 실패", "에러");
            }
        }

        private void btnCopy_Click(object sender, EventArgs e)
        {
            Thread t = new Thread(CopyFile);
            t.Start();
        }

        private void CopyFile()
        {
            // UI too busy
            //FileManager fm = new FileManager(this);
            FileManager fm = new FileManager();

            fm.InProgress += Fm_InProgress;
            fm.InProgress += Fm_InProgress1; ;

            fm.Copy("src.mp4", "dest.mp4");
        }

        private void Fm_InProgress1(object sender, double e)
        {
            Debug.WriteLine("Progress {0}", e);
        }

        private void Fm_InProgress(object sender, double e)
        {
            if (InvokeRequired)
            {
                Invoke(new EventHandler<double>(Fm_InProgress), sender, e);
            }
            else
            {
                this.progressBar1.Value = (int)e;
                this.lblPct.Text = string.Format("{0} %", (int)e);
            }
 
        }
    }
}
