using System;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SurveyWebsite.UserSurveys
{
    public partial class SurveyResult : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SurveyDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //total surveys
                conn.Open();
                string sumSurveyQuery = "SELECT COUNT(survey_id) FROM tblSurvey";
               SqlCommand surveyTot = new SqlCommand(sumSurveyQuery, conn);
                int overallSurvey = Convert.ToInt32(surveyTot.ExecuteScalar());
                lblsur.Visible = true;
                lblsur.Text = " =  " + overallSurvey;

                //average age 
                string averageAge = " SELECT SUM(age) FROM tblSurvey";
                SqlCommand ageCom = new SqlCommand(averageAge, conn);
                int averAge = Convert.ToInt32(ageCom.ExecuteScalar());
                lblage.Visible = true;
                lblage.Text = " = " + (averAge / overallSurvey);

                //oldest person to participate in the survey
                string maxAge = "SELECT first_name, age  FROM tblSurvey WHERE age  =(SELECT MAX(age)  FROM tblSurvey) ";
               SqlCommand ageCommand = new SqlCommand(maxAge, conn);
                string oldest = ageCommand.ExecuteScalar().ToString();
                lblOld.Visible = true;
                lblOld.Text = " = " +  oldest;

                //youngest person who participated in the survey
                string minAge = "SELECT first_name FROM tblSurvey WHERE age  =(SELECT MIN(age)  FROM tblSurvey)";
                SqlCommand minAgeC = new SqlCommand(minAge, conn);
                string youngest = minAgeC.ExecuteScalar().ToString();
                lblyoung.Visible = true;
                lblyoung.Text =" = " + youngest;

                //Percentage of peolple who like pizza
                string pizza = "SELECT COUNT(survey_id) FROM tblSurvey WHERE fave_food = ' Pizza '";
                SqlCommand pizzaSQLC = new SqlCommand(pizza, conn);
                double percentPizza = Convert.ToDouble(pizzaSQLC.ExecuteScalar());
                //percentPizza = (percentPizza / overallSurvey) * 100;
                //double pizzaRoundPercent = Math.Round((float)percentPizza, 1);
                lblpizz.Visible = true;
                lblpizz.Text = (percentPizza) + " %" ;

                //Percentage of peolple who like pasta
                string pasta = "SELECT COUNT(survey_id) FROM tblSurvey WHERE fave_food =' Pasta '";
                SqlCommand pastaSQLC = new SqlCommand(pasta, conn);
                double percentPasta = Convert.ToDouble(pastaSQLC.ExecuteScalar());
                //percentPasta = (percentPasta / overallSurvey) * 100;
                //double pastaRoundPercent = Math.Round((float)percentPasta, 1);
                lblpasta.Visible = true;
                lblpasta.Text = (percentPasta / overallSurvey) * 100 + " %";

                //Percentage of peolple who like Pap and wors
                string pap = "SELECT COUNT(survey_id) FROM tblSurvey WHERE fave_food =' Pap and wors '";
                SqlCommand papSQLC = new SqlCommand(pap, conn);
                double percentPap = Convert.ToDouble(papSQLC.ExecuteScalar());
                //percentPap = (percentPap / overallSurvey) * 100;
                //double papRoundPercent = Math.Round((float)percentPap, 1);
                lblpap.Visible = true;
                lblpap.Text = (percentPap / overallSurvey) * 100 + " %";

                //Percentage of peolple who like to eat out
                string EatOut = "SELECT COUNT(survey_id) FROM tblSurvey WHERE eat_out =' Strongly Agree'";
                SqlCommand EatOutSQLC = new SqlCommand(EatOut, conn);
                double EatOutPercent = Convert.ToDouble(EatOutSQLC.ExecuteScalar());
                EatOutPercent = (EatOutPercent / overallSurvey) * 100;
                double eatRoundPercent = Math.Round((Double)EatOutPercent, 1);
                lbleatout.Visible = true;
                lbleatout.Text = eatRoundPercent + " %";

                //Percentage of peolple who like to watch movies
                string movies = "SELECT COUNT(survey_id) FROM tblSurvey WHERE watch_movies =' Strongly Agree' OR watch_movies =' Agree' ";
                SqlCommand moviesSQLC = new SqlCommand(movies, conn);
                double moviesPercent = Convert.ToDouble(moviesSQLC.ExecuteScalar());
                moviesPercent = (moviesPercent / overallSurvey) * 100;
                double moviesRoundPercent = Math.Round((Double)moviesPercent, 1);
                lblmovies.Visible = true;
                lblmovies.Text = moviesRoundPercent + " %";

                //Percentage of peolple who like to watch tv
                string tv = "SELECT COUNT(survey_id) FROM tblSurvey WHERE watch_tv =' Strongly Agree' OR watch_tv =' Agree'";
                SqlCommand tvSQLC = new SqlCommand(tv, conn);
                double tvPercent = Convert.ToDouble(tvSQLC.ExecuteScalar());
                tvPercent = (tvPercent / overallSurvey) * 100;
                double tvRoundPercent = Math.Round((Double)tvPercent, 1);
                lbltv.Visible = true;
                lbltv.Text = tvRoundPercent + " %";

                //Percentage of peolple who like to listen to radio
                string radio = "SELECT COUNT(survey_id) FROM tblSurvey WHERE listen_radio =' Strongly Agree' OR listen_radio =' Agree'";
                SqlCommand radioSQLC = new SqlCommand(radio, conn);
                double radioPercent = Convert.ToDouble(radioSQLC.ExecuteScalar());
                radioPercent = (radioPercent / overallSurvey) * 100;
                double radioRoundPercent = Math.Round((Double)radioPercent, 1);
                lblradio.Visible = true;
                lblradio.Text = radioRoundPercent + " %";


            }

            catch (Exception ex)
            {
                lblerr.Visible = true;
                lblerr.Text = "Could Not Retrieve data from database. Contact Support team";
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}