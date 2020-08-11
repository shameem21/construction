<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admatrledit.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="mid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="mid" HeaderText="Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="mid" />
                <asp:BoundField DataField="typ" HeaderText="Type" SortExpression="typ" />
                <asp:BoundField DataField="mat" HeaderText="Maerial Name" 
                    SortExpression="mat" />
                <asp:BoundField DataField="unitprice" HeaderText="Unit Price" 
                    SortExpression="unitprice" />
                <asp:BoundField DataField="warranty" HeaderText="Warranty" 
                    SortExpression="warranty" />
                <asp:BoundField DataField="modno" HeaderText="Model No" 
                    SortExpression="modno" />
                <asp:BoundField DataField="mand" HeaderText="Manufacture date" 
                    SortExpression="mand" />
                <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                <asp:BoundField DataField="expd" HeaderText="Expire Date" 
                    SortExpression="expd" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [admattab] WHERE [mid] = @original_mid AND (([typ] = @original_typ) OR ([typ] IS NULL AND @original_typ IS NULL)) AND (([mat] = @original_mat) OR ([mat] IS NULL AND @original_mat IS NULL)) AND [unitprice] = @original_unitprice AND [warranty] = @original_warranty AND (([modno] = @original_modno) OR ([modno] IS NULL AND @original_modno IS NULL)) AND (([mand] = @original_mand) OR ([mand] IS NULL AND @original_mand IS NULL)) AND (([color] = @original_color) OR ([color] IS NULL AND @original_color IS NULL)) AND (([expd] = @original_expd) OR ([expd] IS NULL AND @original_expd IS NULL))" 
            InsertCommand="INSERT INTO [admattab] ([typ], [mat], [unitprice], [warranty], [modno], [mand], [color], [expd]) VALUES (@typ, @mat, @unitprice, @warranty, @modno, @mand, @color, @expd)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [admattab]" 
            UpdateCommand="UPDATE [admattab] SET [typ] = @typ, [mat] = @mat, [unitprice] = @unitprice, [warranty] = @warranty, [modno] = @modno, [mand] = @mand, [color] = @color, [expd] = @expd WHERE [mid] = @original_mid AND (([typ] = @original_typ) OR ([typ] IS NULL AND @original_typ IS NULL)) AND (([mat] = @original_mat) OR ([mat] IS NULL AND @original_mat IS NULL)) AND [unitprice] = @original_unitprice AND [warranty] = @original_warranty AND (([modno] = @original_modno) OR ([modno] IS NULL AND @original_modno IS NULL)) AND (([mand] = @original_mand) OR ([mand] IS NULL AND @original_mand IS NULL)) AND (([color] = @original_color) OR ([color] IS NULL AND @original_color IS NULL)) AND (([expd] = @original_expd) OR ([expd] IS NULL AND @original_expd IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_mid" Type="Int64" />
                <asp:Parameter Name="original_typ" Type="String" />
                <asp:Parameter Name="original_mat" Type="String" />
                <asp:Parameter Name="original_unitprice" Type="Int64" />
                <asp:Parameter Name="original_warranty" Type="Int32" />
                <asp:Parameter Name="original_modno" Type="Int64" />
                <asp:Parameter Name="original_mand" Type="String" />
                <asp:Parameter Name="original_color" Type="String" />
                <asp:Parameter Name="original_expd" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="typ" Type="String" />
                <asp:Parameter Name="mat" Type="String" />
                <asp:Parameter Name="unitprice" Type="Int64" />
                <asp:Parameter Name="warranty" Type="Int32" />
                <asp:Parameter Name="modno" Type="Int64" />
                <asp:Parameter Name="mand" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="expd" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="typ" Type="String" />
                <asp:Parameter Name="mat" Type="String" />
                <asp:Parameter Name="unitprice" Type="Int64" />
                <asp:Parameter Name="warranty" Type="Int32" />
                <asp:Parameter Name="modno" Type="Int64" />
                <asp:Parameter Name="mand" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="expd" Type="String" />
                <asp:Parameter Name="original_mid" Type="Int64" />
                <asp:Parameter Name="original_typ" Type="String" />
                <asp:Parameter Name="original_mat" Type="String" />
                <asp:Parameter Name="original_unitprice" Type="Int64" />
                <asp:Parameter Name="original_warranty" Type="Int32" />
                <asp:Parameter Name="original_modno" Type="Int64" />
                <asp:Parameter Name="original_mand" Type="String" />
                <asp:Parameter Name="original_color" Type="String" />
                <asp:Parameter Name="original_expd" Type="String" />
            </UpdateParameters>
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

