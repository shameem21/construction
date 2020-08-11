<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrworkerbook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="wid" DataSourceID="SqlDataSource1" 
            onrowcommand="GridView1_RowCommand" ForeColor="White">
            <Columns>
                <asp:TemplateField HeaderText="wid" InsertVisible="False" SortExpression="wid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("wid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("wid") %>' Text='<%# Eval("wid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                <asp:BoundField DataField="aadhar" HeaderText="aadhar" 
                    SortExpression="aadhar" />
                <asp:BoundField DataField="workcategory" HeaderText="workcategory" 
                    SortExpression="workcategory" />
                <asp:BoundField DataField="specialisation" HeaderText="specialisation" 
                    SortExpression="specialisation" />
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [wrkrtab]"></asp:SqlDataSource>
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
    <p>
    </p>
</asp:Content>

