using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TEAMUP_FRAMEWORK_MVC
{
    class FileManager
    {
        //private Form1 form;
        //public FileManager(Form1 form)
        //{
        //    this.form = form;
        //}

        public event EventHandler<double> InProgress;


        public void Copy(string srcfile, string destfile)
        {
            byte[] buffer = new byte[1024];
            int pos = 0;

            var fi = new FileInfo(srcfile);
            var fileSize = fi.Length;

            using (BinaryReader rd = new BinaryReader(File.Open(srcfile, FileMode.Open)))
            using (BinaryWriter wr = new BinaryWriter(File.Open(destfile, FileMode.Create)))
            {
                while (pos < fileSize)
                {
                    int count = rd.Read(buffer, 0, buffer.Length);
                    wr.Write(buffer, 0, count);
                    pos += count;

                    double pct = (pos / (double)fileSize) * 100;
                    // UI Control only accesses UI Thread
                    //form.progressBar1.Value = (int)pct;
                    //form.lblPct.Text = string.Format("{0} %", (int) pct);

                    if (InProgress != null)
                    {
                        InProgress(this, pct);
                    }

                }
            }
        }
    }
}
