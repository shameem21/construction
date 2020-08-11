<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="wrkd.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 23px;
    }
    .style3
    {
        height: 22px;
    }
    .style4
    {
        width: 291px;
    }
    .style5
    {
        height: 23px;
        width: 291px;
    }
    .style6
    {
        height: 22px;
        width: 291px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label3" runat="server" Text="Address" ForeColor="White"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="92px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label2" runat="server" Text="Mobile" ForeColor="White"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="10 digit" ForeColor="White" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label4" runat="server" Text="Aadhar" ForeColor="White"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label6" runat="server" Text="Category of work" ForeColor="White"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Plumber</asp:ListItem>
                <asp:ListItem>Ellectrition</asp:ListItem>
                <asp:ListItem>Kallu pani</asp:ListItem>
                <asp:ListItem>Plastering</asp:ListItem>
                <asp:ListItem>Painting</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
                <asp:ListItem>Foundation</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label7" runat="server" Text="Specialised in" ForeColor="White"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label5" runat="server" Text="Photo" ForeColor="White"></asp:Label>
        </td>
        <td class="style3">
            <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Required" 
                ForeColor="White"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="28px" Text="OK" 
                onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [wrkrtab] WHERE [wid] = @original_wid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([Mobno] = @original_Mobno) OR ([Mobno] IS NULL AND @original_Mobno IS NULL)) AND (([aadhar] = @original_aadhar) OR ([aadhar] IS NULL AND @original_aadhar IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))" 
        InsertCommand="INSERT INTO [wrkrtab] ([Name], [address], [Mobno], [aadhar], [photo]) VALUES (@Name, @address, @Mobno, @aadhar, @photo)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [wrkrtab]" 
        UpdateCommand="UPDATE [wrkrtab] SET [Name] = @Name, [address] = @address, [Mobno] = @Mobno, [aadhar] = @aadhar, [photo] = @photo WHERE [wid] = @original_wid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([Mobno] = @original_Mobno) OR ([Mobno] IS NULL AND @original_Mobno IS NULL)) AND (([aadhar] = @original_aadhar) OR ([aadhar] IS NULL AND @original_aadhar IS NULL)) AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_wid" Type="Int64" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_Mobno" Type="Int32" />
            <asp:Parameter Name="original_aadhar" Type="String" />
            <asp:Parameter Name="original_photo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="Mobno" Type="Int32" />
            <asp:Parameter Name="aadhar" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="Mobno" Type="Int32" />
            <asp:Parameter Name="aadhar" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="original_wid" Type="Int64" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_Mobno" Type="Int32" />
            <asp:Parameter Name="original_aadhar" Type="String" />
            <asp:Parameter Name="original_photo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

