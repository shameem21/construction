<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adworkerwdit.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="wid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="wid" HeaderText="wid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="wid" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                <asp:BoundField DataField="aadhar" HeaderText="aadhar" 
                    SortExpression="aadhar" />
                <asp:BoundField DataField="workcategory" HeaderText="workcategory" 
                    SortExpression="workcategory" />
                <asp:BoundField DataField="specialisation" HeaderText="specialisation" 
                    SortExpression="specialisation" />
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [wrkrtab] WHERE [wid] = @original_wid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([Mobno] = @original_Mobno) OR ([Mobno] IS NULL AND @original_Mobno IS NULL)) AND (([aadhar] = @original_aadhar) OR ([aadhar] IS NULL AND @original_aadhar IS NULL)) AND (([workcategory] = @original_workcategory) OR ([workcategory] IS NULL AND @original_workcategory IS NULL)) AND (([specialisation] = @original_specialisation) OR ([specialisation] IS NULL AND @original_specialisation IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
            InsertCommand="INSERT INTO [wrkrtab] ([Name], [address], [Mobno], [aadhar], [workcategory], [specialisation], [photo], [status]) VALUES (@Name, @address, @Mobno, @aadhar, @workcategory, @specialisation, @photo, @status)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [wrkrtab]" 
            UpdateCommand="UPDATE [wrkrtab] SET [Name] = @Name, [address] = @address, [Mobno] = @Mobno, [aadhar] = @aadhar, [workcategory] = @workcategory, [specialisation] = @specialisation, [photo] = @photo, [status] = @status WHERE [wid] = @original_wid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([Mobno] = @original_Mobno) OR ([Mobno] IS NULL AND @original_Mobno IS NULL)) AND (([aadhar] = @original_aadhar) OR ([aadhar] IS NULL AND @original_aadhar IS NULL)) AND (([workcategory] = @original_workcategory) OR ([workcategory] IS NULL AND @original_workcategory IS NULL)) AND (([specialisation] = @original_specialisation) OR ([specialisation] IS NULL AND @original_specialisation IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_wid" Type="Int64" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_Mobno" Type="Int32" />
                <asp:Parameter Name="original_aadhar" Type="String" />
                <asp:Parameter Name="original_workcategory" Type="String" />
                <asp:Parameter Name="original_specialisation" Type="String" />
                <asp:Parameter Name="original_photo" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="Mobno" Type="Int32" />
                <asp:Parameter Name="aadhar" Type="String" />
                <asp:Parameter Name="workcategory" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="Mobno" Type="Int32" />
                <asp:Parameter Name="aadhar" Type="String" />
                <asp:Parameter Name="workcategory" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_wid" Type="Int64" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_Mobno" Type="Int32" />
                <asp:Parameter Name="original_aadhar" Type="String" />
                <asp:Parameter Name="original_workcategory" Type="String" />
                <asp:Parameter Name="original_specialisation" Type="String" />
                <asp:Parameter Name="original_photo" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

