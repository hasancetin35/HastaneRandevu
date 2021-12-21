using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;
	

public partial class sikayet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text.ToString() == "" || TextBox2.Text.ToString() == "")
        {
           
            Label2.Text = "Şikayetinizi ve telefon numaranızı yazıyız...";
        
        }
        else
        {

        OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
        baglantı.Open();
        OleDbCommand komut1 = new OleDbCommand("insert into sikayet (bolum,sikayet,tel,tarih) values (@blm,@skyt,@tl,@trh)", baglantı);
        komut1.Parameters.Add("@blm", DropDownList1.Text.ToString());
        komut1.Parameters.Add("@skyt", TextBox1.Text.ToString());
        komut1.Parameters.Add("@tl", TextBox2.Text.ToString());
        komut1.Parameters.Add("@trh", System.DateTime.Now.ToString());
        komut1.ExecuteNonQuery();
        baglantı.Close();



        Label2.Text = "Şikayetiz alındı teşekkür ederiz...";

        }

    }
}