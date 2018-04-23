using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Xpo;

public partial class _Default : System.Web.UI.Page 
{
    protected Session session1;

    protected void Page_Init(object sender, EventArgs e) {
        session1 = new Session();
        XpoDataSource1.Session = session1;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        XpoDataSource1.Criteria = "[UnitPrice] < 10";
    }

}
