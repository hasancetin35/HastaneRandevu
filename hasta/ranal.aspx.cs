using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.Text == "Dahiliye")
        {
            OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
            baglantı.Open();
            OleDbCommand komut = new OleDbCommand("insert into tablo (TC,Ad,Soyad,Telefon,Hastalik,Tanim) values (@tc,@ad,@sa,@tl,@hasta,@tnm)", baglantı);

            komut.Parameters.Add("@tc", TextBox1.Text.ToString());
            komut.Parameters.Add("@ad", TextBox2.Text.ToString());
            komut.Parameters.Add("@sa", TextBox3.Text.ToString());
            komut.Parameters.Add("@tl", TextBox4.Text.ToString());

            komut.Parameters.Add("@hasta", DropDownList1.Text.ToString());
            komut.Parameters.Add("@tnm", TextBox5.Text.ToString());
            komut.ExecuteNonQuery();
            baglantı.Close();

        }

        else if (DropDownList1.Text == "Kalp")
        {
            OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
            baglantı.Open();
            OleDbCommand komut = new OleDbCommand("insert into tablo1 (TC,Ad,Soyad,Telefon,Hastalik,Tanim) values (@tc,@ad,@sa,@tl,@hasta,@tnm)", baglantı);

            komut.Parameters.Add("@tc", TextBox1.Text.ToString());
            komut.Parameters.Add("@ad", TextBox2.Text.ToString());
            komut.Parameters.Add("@sa", TextBox3.Text.ToString());
            komut.Parameters.Add("@tl", TextBox4.Text.ToString());

            komut.Parameters.Add("@hasta", DropDownList1.Text.ToString());
            komut.Parameters.Add("@tnm", TextBox5.Text.ToString());
            komut.ExecuteNonQuery();
            baglantı.Close();
        }
        else if (DropDownList1.Text == "KBB")
        {
            OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
            baglantı.Open();
            OleDbCommand komut = new OleDbCommand("insert into tablo2 (TC,Ad,Soyad,Telefon,Hastalik,Tanim) values (@tc,@ad,@sa,@tl,@hasta,@tnm)", baglantı);

            komut.Parameters.Add("@tc", TextBox1.Text.ToString());
            komut.Parameters.Add("@ad", TextBox2.Text.ToString());
            komut.Parameters.Add("@sa", TextBox3.Text.ToString());
            komut.Parameters.Add("@tl", TextBox4.Text.ToString());

            komut.Parameters.Add("@hasta", DropDownList1.Text.ToString());
            komut.Parameters.Add("@tnm", TextBox5.Text.ToString());
            komut.ExecuteNonQuery();
            baglantı.Close();
        }
        else if (DropDownList1.Text == "Cildiye")
        {
            OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
            baglantı.Open();
            OleDbCommand komut = new OleDbCommand("insert into tablo3 (TC,Ad,Soyad,Telefon,Hastalik,Tanim) values (@tc,@ad,@sa,@tl,@hasta,@tnm)", baglantı);

            komut.Parameters.Add("@tc", TextBox1.Text.ToString());
            komut.Parameters.Add("@ad", TextBox2.Text.ToString());
            komut.Parameters.Add("@sa", TextBox3.Text.ToString());
            komut.Parameters.Add("@tl", TextBox4.Text.ToString());

            komut.Parameters.Add("@hasta", DropDownList1.Text.ToString());
            komut.Parameters.Add("@tnm", TextBox5.Text.ToString());
            komut.ExecuteNonQuery();
            baglantı.Close();

        }
        else
        {

            OleDbConnection baglantı = new OleDbConnection("Provider = Microsoft.Jet.OleDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\veri.mdb"));
            baglantı.Open();
            OleDbCommand komut = new OleDbCommand("insert into tablo4 (TC,Ad,Soyad,Telefon,Hastalik,Tanim) values (@tc,@ad,@sa,@tl,@hasta,@tnm)", baglantı);

            komut.Parameters.Add("@tc", TextBox1.Text.ToString());
            komut.Parameters.Add("@ad", TextBox2.Text.ToString());
            komut.Parameters.Add("@sa", TextBox3.Text.ToString());
            komut.Parameters.Add("@tl", TextBox4.Text.ToString());

            komut.Parameters.Add("@hasta", DropDownList1.Text.ToString());
            komut.Parameters.Add("@tnm", TextBox2.Text.ToString());
            komut.ExecuteNonQuery();
            baglantı.Close();

        }



        Label1.Text = "Randevu isteğiniz Alınmıştır Teşekkürler.";

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";



        




    }
}
