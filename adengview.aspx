<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adengview.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="eid" DataSourceID="SqlDataSource1" ForeColor="White">
        <Columns>
            <asp:BoundField DataField="eid" HeaderText="Engineer id" InsertVisible="False" 
                ReadOnly="True" SortExpression="eid" />
            <asp:BoundField DataField="nme" HeaderText="Name" SortExpression="nme" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="ag" HeaderText="Age" SortExpression="ag" />
            <asp:BoundField DataField="qlf" HeaderText="Qualification" 
                SortExpression="qlf" />
            <asp:BoundField DataField="wrexp" HeaderText="Work Experiance" 
                SortExpression="wrexp" />
            <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [engtab] WHERE [eid] = @original_eid AND (([nme] = @original_nme) OR ([nme] IS NULL AND @original_nme IS NULL)) AND (([ag] = @original_ag) OR ([ag] IS NULL AND @original_ag IS NULL)) AND (([qlf] = @original_qlf) OR ([qlf] IS NULL AND @original_qlf IS NULL)) AND (([wrexp] = @original_wrexp) OR ([wrexp] IS NULL AND @original_wrexp IS NULL)) AND (([mob] = @original_mob) OR ([mob] IS NULL AND @original_mob IS NULL))" 
        InsertCommand="INSERT INTO [engtab] ([nme], [ag], [qlf], [wrexp], [mob]) VALUES (@nme, @ag, @qlf, @wrexp, @mob)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [engtab]" 
        UpdateCommand="UPDATE [engtab] SET [nme] = @nme, [ag] = @ag, [qlf] = @qlf, [wrexp] = @wrexp, [mob] = @mob WHERE [eid] = @original_eid AND (([nme] = @original_nme) OR ([nme] IS NULL AND @original_nme IS NULL)) AND (([ag] = @original_ag) OR ([ag] IS NULL AND @original_ag IS NULL)) AND (([qlf] = @original_qlf) OR ([qlf] IS NULL AND @original_qlf IS NULL)) AND (([wrexp] = @original_wrexp) OR ([wrexp] IS NULL AND @original_wrexp IS NULL)) AND (([mob] = @original_mob) OR ([mob] IS NULL AND @original_mob IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_eid" Type="Int64" />
            <asp:Parameter Name="original_nme" Type="String" />
            <asp:Parameter Name="original_ag" Type="Int32" />
            <asp:Parameter Name="original_qlf" Type="String" />
            <asp:Parameter Name="original_wrexp" Type="String" />
            <asp:Parameter Name="original_mob" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nme" Type="String" />
            <asp:Parameter Name="ag" Type="Int32" />
            <asp:Parameter Name="qlf" Type="String" />
            <asp:Parameter Name="wrexp" Type="String" />
            <asp:Parameter Name="mob" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nme" Type="String" />
            <asp:Parameter Name="ag" Type="Int32" />
            <asp:Parameter Name="qlf" Type="String" />
            <asp:Parameter Name="wrexp" Type="String" />
            <asp:Parameter Name="mob" Type="Int64" />
            <asp:Parameter Name="original_eid" Type="Int64" />
            <asp:Parameter Name="original_nme" Type="String" />
            <asp:Parameter Name="original_ag" Type="Int32" />
            <asp:Parameter Name="original_qlf" Type="String" />
            <asp:Parameter Name="original_wrexp" Type="String" />
            <asp:Parameter Name="original_mob" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

