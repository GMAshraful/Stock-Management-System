using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementProjectApp.BLL;
using StockManagementProjectApp.DAL.Models;

namespace StockManagementProjectApp.UI
{
    public partial class ViewSalesDateUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CompareDate(string fromDate, string Todate)
        {
            if (fromDate == "" && Todate == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Textbox can not be blank!')", true);
                return;
            }
            else if (fromDate == "" || Todate == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Please input your Date')", true);
                return;
            }
            else
            {
                string date1Day = fromDate.Substring(8);
                string date2Day = Todate.Substring(8);

                string date1Month = fromDate.Substring(5, 2);
                string date2Month = Todate.Substring(5, 2);

               
                string date1Year = fromDate.Remove(4);
                string date2Year = Todate.Remove(4);

                DateTime d1 = Convert.ToDateTime(date1Year + "/" + date1Month + "/" + date1Day);
                DateTime d2 = Convert.ToDateTime(date2Year + "/" + date2Month + "/" + date2Day);


                if (d1 > d2)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('From Date must be less or equal To Date')", true);
                }
                else
                {
                    // Search in database sell item
                   // ViewSellManger viewSellManger = new ViewSellManger();
                    ViewSellManager viewSellManager=new ViewSellManager();
                    List<ViewSell> aviewSell = viewSellManager.SearchByDate(fromDate, Todate);

                    if (aviewSell.Count > 0)
                    {
                        ViewState["Sales"] = aviewSell;
                        SearchSellGridViewList.DataSource = aviewSell;
                        SearchSellGridViewList.DataBind();

                      //  pdfbuttonid.Visible = true;
                    }
                    //else
                    //{
                    //    LabelMessage.Visible = true;
                    //    LabelMessage.Text = "Sale Quantity Is Not Available";

                    //    SearchSellGridViewList.DataSource = aviewSell;
                    //    SearchSellGridViewList.DataBind();
                    //}
                }
            }
        } 
        protected void SearchButtonClick(object sender, EventArgs e)
        {
            string fromDate = FromDateTextboxId.Text;
            string Todate = ToDateTextBoxId.Text;
            CompareDate(fromDate, Todate);
        }

       
    }
}