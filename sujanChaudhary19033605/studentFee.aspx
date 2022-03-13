<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="studentFee.aspx.cs" Inherits="sujanChaudhary19033605.studentFee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="STUDENT_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; ||'-'||person_id, student_id from person join student on person.person_id=student.student_id "></asp:SqlDataSource>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="INOVICE_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="INOVICE_ID" HeaderText="INOVICE_ID" ReadOnly="True" SortExpression="INOVICE_ID" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="INVOICE_NAME" HeaderText="INVOICE_NAME" SortExpression="INVOICE_NAME" />
            <asp:BoundField DataField="INVOICE_DATE" HeaderText="INVOICE_DATE" SortExpression="INVOICE_DATE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select * from fees where student_id=:student">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="student" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
