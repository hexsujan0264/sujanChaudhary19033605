<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="sujanChaudhary19033605.department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Department Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
            <asp:BoundField DataField="DEPARTMENT_CONTACT" HeaderText="DEPARTMENT_CONTACT" SortExpression="DEPARTMENT_CONTACT" />
            <asp:BoundField DataField="DEPARTMENT_ADDRESS" HeaderText="DEPARTMENT_ADDRESS" SortExpression="DEPARTMENT_ADDRESS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DESIGNATION&quot;, &quot;DEPARTMENT_CONTACT&quot;, &quot;DEPARTMENT_ADDRESS&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DESIGNATION, :DEPARTMENT_CONTACT, :DEPARTMENT_ADDRESS)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DESIGNATION&quot;, &quot;DEPARTMENT_CONTACT&quot;, &quot;DEPARTMENT_ADDRESS&quot; FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DESIGNATION&quot; = :DESIGNATION, &quot;DEPARTMENT_CONTACT&quot; = :DEPARTMENT_CONTACT, &quot;DEPARTMENT_ADDRESS&quot; = :DEPARTMENT_ADDRESS WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_CONTACT" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ADDRESS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT_CONTACT" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ADDRESS" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            DEPARTMENT_ID:
            <asp:Label ID="DEPARTMENT_IDLabel1" runat="server" Text='<%# Eval("DEPARTMENT_ID") %>' />
            <br />
            DEPARTMENT_NAME:
            <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
            <br />
            DESIGNATION:
            <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' />
            <br />
            DEPARTMENT_CONTACT:
            <asp:TextBox ID="DEPARTMENT_CONTACTTextBox" runat="server" Text='<%# Bind("DEPARTMENT_CONTACT") %>' />
            <br />
            DEPARTMENT_ADDRESS:
            <asp:TextBox ID="DEPARTMENT_ADDRESSTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ADDRESS") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            DEPARTMENT_ID:
            <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
            <br />
            DEPARTMENT_NAME:
            <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
            <br />
            DESIGNATION:
            <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' />
            <br />
            DEPARTMENT_CONTACT:
            <asp:TextBox ID="DEPARTMENT_CONTACTTextBox" runat="server" Text='<%# Bind("DEPARTMENT_CONTACT") %>' />
            <br />
            DEPARTMENT_ADDRESS:
            <asp:TextBox ID="DEPARTMENT_ADDRESSTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ADDRESS") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="INSERT" />
        </ItemTemplate>
    </asp:FormView>
<br />
<br />
<br />
<br />
</asp:Content>
