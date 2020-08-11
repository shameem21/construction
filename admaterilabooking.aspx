<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admaterilabooking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bookid" DataSourceID="SqlDataSource1" 
            onrowcommand="GridView1_RowCommand" ForeColor="White">
            <Columns>
                <asp:TemplateField HeaderText="Booking Id" InsertVisible="False" 
                    SortExpression="bookid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("bookid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("bookid") %>' Text='<%# Eval("bookid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="mid" HeaderText="Material id" SortExpression="mid" />
                <asp:BoundField DataField="howmany" HeaderText="Required Quantity" 
                    SortExpression="howmany" />
                <asp:BoundField DataField="personname" HeaderText="Person Name" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="House Name" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="PO" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="District" 
                    SortExpression="district" />
                <asp:BoundField DataField="bkdate" HeaderText="Booking Date" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
                <asp:BoundField DataField="allotquantity" HeaderText="Alloted quantity" 
                    SortExpression="allotquantity" />
                <asp:BoundField DataField="dtofdelivery" HeaderText="Date of Delivery" 
                    SortExpression="dtofdelivery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [usrmattb]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

