<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="person.aspx.cs" Inherits="sujanChaudhary19033605.person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .newStyle1 {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
                <asp:BoundField DataField="PERSON_NAME" HeaderText="PERSON_NAME" SortExpression="PERSON_NAME" />
                <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />
                <asp:BoundField DataField="PERSON_EMAIL" HeaderText="PERSON_EMAIL" SortExpression="PERSON_EMAIL" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                PERSON_ID:
                <asp:Label ID="PERSON_IDLabel1" runat="server" Text='<%# Eval("PERSON_ID") %>' />
                <br />
                PERSON_NAME:
                <asp:TextBox ID="PERSON_NAMETextBox" runat="server" Text='<%# Bind("PERSON_NAME") %>' />
                <br />
                PHONE_NO:
                <asp:TextBox ID="PHONE_NOTextBox" runat="server" Text='<%# Bind("PHONE_NO") %>' />
                <br />
                PERSON_EMAIL:
                <asp:TextBox ID="PERSON_EMAILTextBox" runat="server" Text='<%# Bind("PERSON_EMAIL") %>' />
                <br />
                GENDER:
                <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                PERSON_ID:
                <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' />
                <br />
                PERSON_NAME:
                <asp:TextBox ID="PERSON_NAMETextBox" runat="server" Text='<%# Bind("PERSON_NAME") %>' />
                <br />
                PHONE_NO:
                <asp:TextBox ID="PHONE_NOTextBox" runat="server" Text='<%# Bind("PHONE_NO") %>' />
                <br />
                PERSON_EMAIL:
                <asp:TextBox ID="PERSON_EMAILTextBox" runat="server" Text='<%# Bind("PERSON_EMAIL") %>' />
                <br />
                GENDER:
                <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="INSERT" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;Person Name&quot;, &quot;PHONE_NO&quot;, &quot;Person Email&quot;, &quot;GENDER&quot;) VALUES (:PERSON_ID, :Person_Name, :PHONE_NO, :Person_Email, :GENDER)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;Person Name&quot; AS Person_Name, &quot;PHONE_NO&quot;, &quot;Person Email&quot; AS Person_Email, &quot;GENDER&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;Person Name&quot; = :Person_Name, &quot;PHONE_NO&quot; = :PHONE_NO, &quot;Person Email&quot; = :Person_Email, &quot;GENDER&quot; = :GENDER WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
            <DeleteParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="Person_Name" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="Person_Email" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Person_Name" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="Person_Email" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
