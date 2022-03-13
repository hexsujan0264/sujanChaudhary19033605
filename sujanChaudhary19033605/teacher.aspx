<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="sujanChaudhary19033605.teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Teacher Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;Person Name&quot; ||'-'||person_id,person_id from person where person_id not in (select teacher_id from teacher)"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                TEACHER_ID:
                <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                <br />
                SALARY:
                <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                <br />
                JOINING_DATE:
                <asp:TextBox ID="JOINING_DATETextBox" runat="server" Text='<%# Bind("JOINING_DATE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                TEACHER_ID:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="&quot;PERSONNAME&quot;||'-'||PERSON_ID" DataValueField="PERSON_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                </asp:DropDownList>
                <br />
                SALARY:
                <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                <br />
                JOINING_DATE:
                <asp:TextBox ID="JOINING_DATETextBox" runat="server" Text='<%# Bind("JOINING_DATE") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="INSERT" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;JOINING_DATE&quot;) VALUES (:TEACHER_ID, :SALARY, :JOINING_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;JOINING_DATE&quot; FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;SALARY&quot; = :SALARY, &quot;JOINING_DATE&quot; = :JOINING_DATE WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="SALARY" Type="String" />
                <asp:Parameter Name="JOINING_DATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SALARY" Type="String" />
                <asp:Parameter Name="JOINING_DATE" Type="DateTime" />
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
       
</asp:Content>
