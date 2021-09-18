using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormularioASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valor;
            valor = int.Parse(txtZIP.Text);

            if (valor % 5 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void btnSubmit(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                if (IsValid)
                    Response.Redirect("https://www.uac.edu.co/");
            }
            else
            {
                Label14.Text = "Porfavor, acepta los términos y condiciones para continuar.";
            }
        }
    }
}