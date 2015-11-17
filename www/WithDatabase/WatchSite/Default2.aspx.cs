using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      
        if (!IsPostBack)
        {
            SetImageUrl();
        }

       // SetImageUrl();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            int i = (int)ViewState["ImageDisplayed"];
            i = i + 1;
           // EnableViewState = true;
            ViewState["ImageDisplayed"] = i;

            DataRow imageDataRow = ((DataSet)ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == i.ToString());
            if (imageDataRow != null)
            {
                ImageButton1.ImageUrl = "~/Images/" + imageDataRow["name"].ToString();
                lblImageName.Text = imageDataRow["name"].ToString();
                lblImageOrder.Text = imageDataRow["order"].ToString();
            }
            else
            {
                SetImageUrl();
            }
        }
        catch (Exception Ex1)
        {
            lblImageName.Text = Ex1.Message;
            
        }
       
    }

    private void SetImageUrl()
    {

        try
        {
            DataSet ds = new DataSet();
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("spGetImageData", con);
            da.Fill(ds, "image");
            ViewState["ImageData"] = ds;
            ViewState["ImageDisplayed"] = 1;

            DataRow imageDataRow = ds.Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == "1");
            ImageButton1.ImageUrl = "~/Images/" + imageDataRow["name"].ToString();

            lblImageName.Text = imageDataRow["name"].ToString();
            lblImageOrder.Text = imageDataRow["order"].ToString();

        }
        catch (SqlException SqlE)
        {
            lblImageName.Text = SqlE.Message;
        }
        catch (Exception Ex)
        {
            lblImageName.Text = Ex.Message;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(Timer1.Enabled)
        {
            Timer1.Enabled = false;
        }
        else
        {
            Timer1.Enabled = true;
        }
    }
}