<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrmtrlstatus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bookid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="bookid" HeaderText="bookid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                <asp:BoundField DataField="mid" HeaderText="mid" SortExpression="mid" />
                <asp:BoundField DataField="howmany" HeaderText="Required Quantity" 
                    SortExpression="howmany" />
                <asp:BoundField DataField="personname" HeaderText="personname" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="hsname" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="po" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="district" 
                    SortExpression="district" />
                <asp:BoundField DataField="bkdate" HeaderText="bkdate" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="allotquantity" HeaderText="Alloted quantity" 
                    SortExpression="allotquantity" />
                <asp:BoundField DataField="dtofdelivery" HeaderText="Date of delivery" 
                    SortExpression="dtofdelivery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [usrmattb] WHERE ([rid] = @rid)">
            <SelectParameters>
                <asp:SessionParameter Name="rid" SessionField="rid" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
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

