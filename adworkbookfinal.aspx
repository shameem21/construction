<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adworkbookfinal.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="bid" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px" ForeColor="White">
            <Fields>
                <asp:BoundField DataField="bid" HeaderText="Booking Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bid" />
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="wid" HeaderText="Worker id" SortExpression="wid" />
                <asp:BoundField DataField="dateofwork" HeaderText="Date of work" 
                    SortExpression="dateofwork" />
                <asp:BoundField DataField="personname" HeaderText="Person name" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="House Name" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="po" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="District" 
                    SortExpression="district" />
                <asp:BoundField DataField="bkdate" HeaderText="Booking date" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="howmany" HeaderText="How many Days" 
                    SortExpression="howmany" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [workerbookingtb] WHERE ([bid] = @bid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="bid" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Approve" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

