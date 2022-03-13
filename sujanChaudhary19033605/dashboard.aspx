<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="sujanChaudhary19033605.dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#333333" Height="702px">
    <asp:Panel ID="Panel2" runat="server" BackColor="#1A2935" BorderColor="White" Height="700px" Width="220px">
        <asp:Panel ID="Panel3" runat="server" Height="77px" style="margin-left: 0px" Width="228px">
            <asp:Image ID="Image1" runat="server" Height="113px" ImageUrl="~/2.png" style="margin-left: 52px" Width="101px" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_FACULTY&quot;, &quot;STUDENT_ID&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="425px" Width="568px">
                <series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" XValueMember="STUDENT_FACULTY" YValueMembers="STUDENT_ID">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </asp:Panel>
    </asp:Panel>
</asp:Panel>
</asp:Content>
