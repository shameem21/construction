<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrplan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 300px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Plan type" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataTextField="plntyp" DataValueField="eid" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        </table>
    <br />
    `<asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="111px" 
                ImageUrl='<%# Eval("img") %>' Width="94px" />
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("sqrfeet") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <br />
</asp:Content>

