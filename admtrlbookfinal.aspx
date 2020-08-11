<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admtrlbookfinal.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="bookid" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px" ForeColor="White">
            <Fields>
                <asp:BoundField DataField="bookid" HeaderText="Book id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bookid" />
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
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [usrmattb] WHERE ([bookid] = @bookid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="bookid" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <table class="style1">
        <tr>
            <td bgcolor="White">
                If you Want to reject then pls click here
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Allot Quantity" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Expected Date of Delivery" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px" ondayrender="Calendar1_DayRender">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Approve" />
                &nbsp;</td>
        </tr>
    </table>
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

