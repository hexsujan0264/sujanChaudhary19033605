<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="teacherModuleMapping.aspx.cs" Inherits="sujanChaudhary19033605.teacherModuleMapping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="TEACHER_ID" Height="16px" Width="138px">
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_CODE" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="JOINING_DATE" HeaderText="JOINING_DATE" SortExpression="JOINING_DATE" />
                <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                <asp:BoundField DataField="CREDITHRS" HeaderText="CREDITHRS" SortExpression="CREDITHRS" />
                <asp:BoundField DataField="MODULE_TYPE" HeaderText="MODULE_TYPE" SortExpression="MODULE_TYPE" />
            </Columns>
        </asp:GridView>
    </p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select teacher.teacher_id, teacher.salary, teacher.joining_date, module.module_code, module.Module_Name, module.credithrs, 
module.module_type from teacher
join module_teacher
on teacher.teacher_id=module_teacher.teacher_id
join module
on module_teacher.module_code=module.module_code
where teacher.teacher_id = :teacher">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="teacher" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select &quot;Person Name&quot;||'-'||person_id,teacher_id from person join teacher on person.person_id = teacher.teacher_id"></asp:SqlDataSource>
    <br />
</asp:Content>
