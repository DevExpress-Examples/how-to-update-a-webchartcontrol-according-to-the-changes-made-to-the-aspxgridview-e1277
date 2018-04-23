Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Xpo

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected session1 As Session

	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		session1 = New Session()
		XpoDataSource1.Session = session1
	End Sub

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		XpoDataSource1.Criteria = "[UnitPrice] < 10"
	End Sub

End Class
