using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebFormsControlls
{
    public partial class WebControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            var num1 = Convert.ToDecimal(this.Number1.Text);
            var num2 = Convert.ToDecimal(this.Number2.Text);
            var optr = this.Operations.SelectedValue;
            var result = 0m;
            if (optr == "+")
            {
                result = num1 + num2;
            }
            else if (optr == "-")
            {
                result = num1 - num2;
            }
            else if (optr == "*")
            {
                result = num1 * num2;
            }
            else
            {
                result = num1 / num2;
            }
            userInput.Text = result.ToString();
        }
       
            
        }
    }
}