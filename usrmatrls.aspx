<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrmatrls.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 22px;
        }
        .style3
        {
            height: 22px;
            width: 304px;
        }
        .style4
        {
            width: 304px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Material Type" ForeColor="White"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Electric</asp:ListItem>
                    <asp:ListItem>Plumbing</asp:ListItem>
                    <asp:ListItem>Sanitary</asp:ListItem>
                    <asp:ListItem>Construction</asp:ListItem>
                    <asp:ListItem>Flooring</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="mid" DataSourceID="SqlDataSource1" 
                    onrowcommand="GridView1_RowCommand" ForeColor="White">
                    <Columns>
                        <asp:TemplateField HeaderText="mid" InsertVisible="False" SortExpression="mid">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("mid") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("mid") %>' Text='<%# Eval("mid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="typ" HeaderText="typ" SortExpression="typ" />
                        <asp:BoundField DataField="mat" HeaderText="Material" SortExpression="mat" />
                        <asp:BoundField DataField="unitprice" HeaderText="Unit Price" 
                            SortExpression="unitprice" />
                        <asp:BoundField DataField="warranty" HeaderText="Warranty" 
                            SortExpression="warranty" />
                        <asp:BoundField DataField="modno" HeaderText="Model No" 
                            SortExpression="modno" />
                        <asp:BoundField DataField="mand" HeaderText="Manufacturing date" 
                            SortExpression="mand" />
                        <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                        <asp:BoundField DataField="expd" HeaderText="Expiry Date" 
                            SortExpression="expd" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [admattab] WHERE ([typ] = @typ)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="typ" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

