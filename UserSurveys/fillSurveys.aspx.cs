using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SurveyWebsite.UserSurveys
{
    public partial class fillSurveys : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SurveyDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            string chckbxselect = "";
            int i;
            for (i = 0; i < CheckBoxList1.Items.Count;i++ )
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (chckbxselect == "")
                    {
                        chckbxselect = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        chckbxselect += ", " + CheckBoxList1.Items[i].Text;
                    }
                }

            }

            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO tblSurvey (surname,first_name,c_number,date,age,fave_food,eat_out,watch_movies,watch_tv,listen_radio) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + chckbxselect + "','" + RadioButtonEatOut.SelectedValue + "','" + RadioButtonMovies.SelectedValue + "','" + RadioButtonTv.SelectedValue + "','" + RadioButtonFM.SelectedValue + "')";
                cmd.ExecuteNonQuery();
                lbl1.Visible = true;
                lbl1.Text = "Successfully Submitted!";
                
               
            }
            catch (Exception ex)
            {
                conn.Close();
                lblerr.Visible = true;
                lblerr.Text = "Could Not Submit. Contact with the Database admin";
            }

        }

    }
  }