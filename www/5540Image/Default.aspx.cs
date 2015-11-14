using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SetImageUrl();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {

        if(ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Images/1.jpg";
            ViewState["ImageDisplayed"] = 1;
            Label1.Text = "Displaying Image - 1";
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            i = (i % 8 + 1); // increment to next image   1, 2. ... 8, 1, 2 ... 8 (continue)
            Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
            ViewState["ImageDisplayed"] = i;
            Label1.Text = "Displaying Image - " + i.ToString();
        }

        ////////////Random Dispaly//////////
       // Random _rand = new Random();

       // int i = _rand.Next(1, 8);
       // Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
       // Label1.Text = "Displaying Image - " + i.ToString();
        //////////
    }
}