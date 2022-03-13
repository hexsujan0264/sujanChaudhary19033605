<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="assignment.aspx.cs" Inherits="sujanChaudhary19033605.assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="STUDENT_ID" Height="16px" Width="123px">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ASSIGNMENT_TYPE,STUDENT_ID,MODULE_CODE" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" ReadOnly="True" SortExpression="ASSIGNMENT_TYPE" />
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
            <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="ATTENDANCE_ID" HeaderText="ATTENDANCE_ID" SortExpression="ATTENDANCE_ID" />
            <asp:TemplateField HeaderText="Result_Status">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" Enabled="false" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="STATUS" DataValueField="GRADE" SelectedValue='<%# Bind("GRADE") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="Select grade, status from grade"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="Select *from assignment where student_id=:student">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="student" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot;||'-'||person_id, student_id from person join student on person.person_id = student.student_id"></asp:SqlDataSource>
</asp:Content>
