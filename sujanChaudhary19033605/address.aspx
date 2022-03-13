<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="sujanChaudhary19033605.adress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" Height="246px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="819px" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="ADDRESS_NAME" HeaderText="ADDRESS_NAME" SortExpression="ADDRESS_NAME" />
            <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" BorderColor="#6600CC" ForeColor="#6600CC" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            ADDRESS_ID:
            <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
            <br />
            ADDRESS_NAME:
            <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <br />
            ADDRESS_ID:
            <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
            <br />
            <br />
            ADDRESS_NAME:
            <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
            <br />
            <br />
            PROVINCE:
            <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success " Font-Bold="true"/>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" Font-Bold="true"/>
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="INSERT" CssClass="btn btn-danger" Font-Bold="true" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;ADDRESS_NAME&quot;, &quot;PROVINCE&quot;) VALUES (:ADDRESS_ID, :ADDRESS_NAME, :PROVINCE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;ADDRESS_NAME&quot;, &quot;PROVINCE&quot; FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;ADDRESS_NAME&quot; = :ADDRESS_NAME, &quot;PROVINCE&quot; = :PROVINCE WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
        <DeleteParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            <asp:Parameter Name="ADDRESS_NAME" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ADDRESS_NAME" Type="String" />
            <asp:Parameter Name="PROVINCE" Type="String" />
            <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
