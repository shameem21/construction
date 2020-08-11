<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admat.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 484px;
        }
        .style2
        {
            width: 178px;
        }
        .style3
        {
            width: 178px;
            height: 45px;
        }
        .style4
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        ForeColor="White">
        <asp:ListItem Value="0">Add</asp:ListItem>
        <asp:ListItem Value="1">Edit/Remove</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Type" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Electric</asp:ListItem>
                        <asp:ListItem>Plumbing</asp:ListItem>
                        <asp:ListItem>Sanitary</asp:ListItem>
                        <asp:ListItem>Construction</asp:ListItem>
                        <asp:ListItem>Flooring</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Material" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Cost/Unit" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="187px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Number Only" ForeColor="White" 
                        ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Warranty" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="184px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Number Only" ForeColor="White" 
                        ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Model No" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="183px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Manufacture Date" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Colour" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="187px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Expiry Date" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="188px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style4">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="height: 26px" Text="Submit" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="243px" Visible="False">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="aid" DataSourceID="SqlDataSource1" ForeColor="White">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="aid" HeaderText="Id" ReadOnly="True" 
                        SortExpression="aid" />
                    <asp:BoundField DataField="typ" HeaderText="Type" SortExpression="typ" />
                    <asp:BoundField DataField="mat" HeaderText="Material Name" 
                        SortExpression="mat" />
                    <asp:BoundField DataField="unitprice" HeaderText="Unit price" 
                        InsertVisible="False" ReadOnly="True" SortExpression="unitprice" />
                    <asp:BoundField DataField="warranty" HeaderText="Warranty" 
                        SortExpression="warranty" />
                    <asp:BoundField DataField="modno" HeaderText="Model No" 
                        SortExpression="modno" />
                    <asp:BoundField DataField="mand" HeaderText="Manufacturing Date" 
                        SortExpression="mand" />
                    <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                    <asp:BoundField DataField="expd" HeaderText="Expiry date" 
                        SortExpression="expd" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [admattab] WHERE [aid] = @original_aid AND (([typ] = @original_typ) OR ([typ] IS NULL AND @original_typ IS NULL)) AND (([mat] = @original_mat) OR ([mat] IS NULL AND @original_mat IS NULL)) AND [unitprice] = @original_unitprice AND [warranty] = @original_warranty AND (([modno] = @original_modno) OR ([modno] IS NULL AND @original_modno IS NULL)) AND (([mand] = @original_mand) OR ([mand] IS NULL AND @original_mand IS NULL)) AND (([color] = @original_color) OR ([color] IS NULL AND @original_color IS NULL)) AND (([expd] = @original_expd) OR ([expd] IS NULL AND @original_expd IS NULL))" 
                InsertCommand="INSERT INTO [admattab] ([aid], [typ], [mat], [warranty], [modno], [mand], [color], [expd]) VALUES (@aid, @typ, @mat, @warranty, @modno, @mand, @color, @expd)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [admattab]" 
                UpdateCommand="UPDATE [admattab] SET [typ] = @typ, [mat] = @mat, [unitprice] = @unitprice, [warranty] = @warranty, [modno] = @modno, [mand] = @mand, [color] = @color, [expd] = @expd WHERE [aid] = @original_aid AND (([typ] = @original_typ) OR ([typ] IS NULL AND @original_typ IS NULL)) AND (([mat] = @original_mat) OR ([mat] IS NULL AND @original_mat IS NULL)) AND [unitprice] = @original_unitprice AND [warranty] = @original_warranty AND (([modno] = @original_modno) OR ([modno] IS NULL AND @original_modno IS NULL)) AND (([mand] = @original_mand) OR ([mand] IS NULL AND @original_mand IS NULL)) AND (([color] = @original_color) OR ([color] IS NULL AND @original_color IS NULL)) AND (([expd] = @original_expd) OR ([expd] IS NULL AND @original_expd IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_aid" Type="Int64" />
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
                    <asp:Parameter Name="aid" Type="Int64" />
                    <asp:Parameter Name="typ" Type="String" />
                    <asp:Parameter Name="mat" Type="String" />
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
                    <asp:Parameter Name="original_aid" Type="Int64" />
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
        </asp:Panel>
        <br />
        <br />
    </asp:Panel>
    </asp:Content>

