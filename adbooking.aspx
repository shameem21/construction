<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adbooking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="bid" DataSourceID="SqlDataSource1" 
                    onrowcommand="GridView1_RowCommand" ForeColor="White">
                    <Columns>
                        <asp:TemplateField HeaderText="Booking id" InsertVisible="False" 
                            SortExpression="bid">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("bid") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("bid") %>' Text='<%# Eval("bid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                        <asp:BoundField DataField="wid" HeaderText="Worker id" SortExpression="wid" />
                        <asp:BoundField DataField="dateofwork" HeaderText="Date of Work" 
                            SortExpression="dateofwork" />
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
                        <asp:BoundField DataField="howmany" HeaderText="How Many Days" 
                            SortExpression="howmany" />
                        <asp:BoundField DataField="status" HeaderText="Status" 
                            SortExpression="status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [workerbookingtb]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
    <br />
</asp:Content>

