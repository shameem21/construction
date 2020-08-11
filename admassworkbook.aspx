<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admassworkbook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="massbid" DataSourceID="SqlDataSource1" 
            onrowcommand="GridView1_RowCommand" ForeColor="White">
            <Columns>
                <asp:TemplateField HeaderText="Id" InsertVisible="False" 
                    SortExpression="massbid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("massbid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("massbid") %>' Text='<%# Eval("massbid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="dateowork" HeaderText="Date of Work" 
                    SortExpression="dateowork" />
                <asp:BoundField DataField="personname" HeaderText="Person Name" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="House Name" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="PO" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="District" 
                    SortExpression="district" />
                <asp:BoundField DataField="worktype" HeaderText="Work Type" 
                    SortExpression="worktype" />
                <asp:BoundField DataField="days" HeaderText="Days" SortExpression="days" />
                <asp:BoundField DataField="numberofworkers" HeaderText="Number of workers" 
                    SortExpression="numberofworkers" />
                <asp:BoundField DataField="bkdate" HeaderText="Booking Date" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [masswrkrbooktb]"></asp:SqlDataSource>
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
    <p>
    </p>
</asp:Content>

