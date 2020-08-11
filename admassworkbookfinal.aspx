<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admassworkbookfinal.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="massbid" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px" ForeColor="White" style="text-align: left">
            <Fields>
                <asp:BoundField DataField="massbid" HeaderText="Booking id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="massbid" />
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="dateowork" HeaderText="Date of work" 
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
                <asp:BoundField DataField="bkdate" HeaderText="Booking date" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [masswrkrbooktb] WHERE ([massbid] = @massbid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="massbid" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Approve" />
&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

