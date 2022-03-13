﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="module.aspx.cs" Inherits="sujanChaudhary19033605.module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Module Page<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                <asp:BoundField DataField="CREDITHRS" HeaderText="CREDITHRS" SortExpression="CREDITHRS" />
                <asp:BoundField DataField="MODULE_TYPE" HeaderText="MODULE_TYPE" SortExpression="MODULE_TYPE" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MODULE_CODE:
                <asp:Label ID="MODULE_CODELabel1" runat="server" Text='<%# Eval("MODULE_CODE") %>' />
                <br />
                MODULE_NAME:
                <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                <br />
                CREDITHRS:
                <asp:TextBox ID="CREDITHRSTextBox" runat="server" Text='<%# Bind("CREDITHRS") %>' />
                <br />
                MODULE_TYPE:
                <asp:TextBox ID="MODULE_TYPETextBox" runat="server" Text='<%# Bind("MODULE_TYPE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MODULE_CODE:
                <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
                <br />
                MODULE_NAME:
                <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                <br />
                CREDITHRS:
                <asp:TextBox ID="CREDITHRSTextBox" runat="server" Text='<%# Bind("CREDITHRS") %>' />
                <br />
                MODULE_TYPE:
                <asp:TextBox ID="MODULE_TYPETextBox" runat="server" Text='<%# Bind("MODULE_TYPE") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="INSERT" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDITHRS&quot;, &quot;MODULE_TYPE&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDITHRS, :MODULE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDITHRS&quot;, &quot;MODULE_TYPE&quot; FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDITHRS&quot; = :CREDITHRS, &quot;MODULE_TYPE&quot; = :MODULE_TYPE WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
            <DeleteParameters>
                <asp:Parameter Name="MODULE_CODE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MODULE_CODE" Type="String" />
                <asp:Parameter Name="MODULE_NAME" Type="String" />
                <asp:Parameter Name="CREDITHRS" Type="Decimal" />
                <asp:Parameter Name="MODULE_TYPE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MODULE_NAME" Type="String" />
                <asp:Parameter Name="CREDITHRS" Type="Decimal" />
                <asp:Parameter Name="MODULE_TYPE" Type="String" />
                <asp:Parameter Name="MODULE_CODE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
