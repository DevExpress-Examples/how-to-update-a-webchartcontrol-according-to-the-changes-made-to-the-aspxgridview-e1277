<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Xpo.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<%@ Register Assembly="DevExpress.XtraCharts.v8.2.Web, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
            DiagramTypeName="XYDiagram" Height="261px" Width="1016px" DataSourceID="XpoDataSource1">
            <SeriesSerializable>
                <cc1:Series LabelTypeName="PointSeriesLabel" Name="Series 1"
                    PointOptionsTypeName="PointOptions" SeriesViewTypeName="LineSeriesView" ArgumentDataMember="ProductName" ValueDataMembersSerializable="UnitPrice">
                    <view hiddenserializablestring="to be serialized"></view>
                    <label hiddenserializablestring="to be serialized" linevisible="True">
                    </label>
                    <pointoptions hiddenserializablestring="to be serialized"></pointoptions>
                    <legendpointoptions hiddenserializablestring="to be serialized"></legendpointoptions>
                </cc1:Series>
            </SeriesSerializable>
            <SeriesTemplate LabelTypeName="SideBySideBarSeriesLabel" PointOptionsTypeName="PointOptions"
                SeriesViewTypeName="SideBySideBarSeriesView">
                <PointOptions HiddenSerializableString="to be serialized">
                </PointOptions>
                <Label HiddenSerializableString="to be serialized" LineVisible="True">
                </Label>
                <LegendPointOptions HiddenSerializableString="to be serialized">
                </LegendPointOptions>
                <View HiddenSerializableString="to be serialized">
                </View>
            </SeriesTemplate>
            <Diagram>
                <axisx visibleinpanesserializable="-1">
<Label Angle="45"></Label>

<Range SideMarginsEnabled="True"></Range>
</axisx>
                <axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
            </Diagram>
            <FillStyle FillOptionsTypeName="SolidFillOptions">
                <Options HiddenSerializableString="to be serialized" />
            </FillStyle>
        </dxchartsui:WebChartControl>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="1015px" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" KeyFieldName="ProductID">
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                </dxwgv:GridViewCommandColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" Visible="False">
                </dxwgv:GridViewDataCheckColumn>
                <dxwgv:GridViewDataTextColumn FieldName="EAN13" Visible="False">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" Visible="False">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="5">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsPager PageSize="15">
            </SettingsPager>
            <ClientSideEvents BeginCallback="function(s, e) {
	callBackEvent = e.command;
}" EndCallback="function(s, e) {
	if (callBackEvent == &quot;UPDATEEDIT&quot;)
		chart.PerformCallback(&quot;test&quot;);
}" />
        </dxwgv:ASPxGridView>
    
    </div>
        <dxxpo:XpoDataSource ID="XpoDataSource1" runat="server" ServerMode="True" TypeName="nwind.Products">
        </dxxpo:XpoDataSource>
    </form>
</body>
</html>
