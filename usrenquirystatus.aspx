<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrenquirystatus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="enqid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="enqid" HeaderText="enqid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="enqid" />
                <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                <asp:BoundField DataField="btype" HeaderText="btype" SortExpression="btype" />
                <asp:BoundField DataField="sqft" HeaderText="sqft" SortExpression="sqft" />
                <asp:BoundField DataField="finishduration" HeaderText="finishduration" 
                    SortExpression="finishduration" />
                <asp:BoundField DataField="startdate" HeaderText="startdate" 
                    SortExpression="startdate" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="mtrltype" HeaderText="mtrltype" 
                    SortExpression="mtrltype" />
                <asp:BoundField DataField="landtype" HeaderText="landtype" 
                    SortExpression="landtype" />
                <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
                <asp:BoundField DataField="expectedamount" HeaderText="expectedamount" 
                    SortExpression="expectedamount" />
                <asp:BoundField DataField="cmpltntime" HeaderText="cmpltntime" 
                    SortExpression="cmpltntime" />
                <asp:BoundField DataField="workdesc" HeaderText="workdesc" 
                    SortExpression="workdesc" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [enquirytb] WHERE ([rid] = @rid)">
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

