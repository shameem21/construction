<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adenquiry.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="enqid" DataSourceID="SqlDataSource1" 
            onrowcommand="GridView1_RowCommand" ForeColor="White">
            <Columns>
                <asp:TemplateField HeaderText="Enq id" InsertVisible="False" 
                    SortExpression="enqid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("enqid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("enqid") %>' Text='<%# Eval("enqid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="btype" HeaderText="Type" SortExpression="btype" />
                <asp:BoundField DataField="sqft" HeaderText="Sqft" SortExpression="sqft" />
                <asp:BoundField DataField="finishduration" HeaderText="Finishing Duration" 
                    SortExpression="finishduration" />
                <asp:BoundField DataField="startdate" HeaderText="Start Date" 
                    SortExpression="startdate" />
                <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                <asp:BoundField DataField="mtrltype" HeaderText="Mtrl Type" 
                    SortExpression="mtrltype" />
                <asp:BoundField DataField="landtype" HeaderText="Land Type" 
                    SortExpression="landtype" />
                <asp:BoundField DataField="other" HeaderText="Other" SortExpression="other" />
                <asp:BoundField DataField="expectedamount" HeaderText="Expected Amount" 
                    SortExpression="expectedamount" />
                <asp:BoundField DataField="cmpltntime" HeaderText="Cmpletion Time" 
                    SortExpression="cmpltntime" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [enquirytb]"></asp:SqlDataSource>
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

