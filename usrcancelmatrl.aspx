<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrcancelmatrl.aspx.cs" Inherits="_Default" %>

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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="bookid" HeaderText="Book id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="rid" HeaderText="User id" SortExpression="rid" />
                <asp:BoundField DataField="mid" HeaderText="Mid" SortExpression="mid" />
                <asp:BoundField DataField="howmany" HeaderText="How Many" 
                    SortExpression="howmany" />
                <asp:BoundField DataField="personname" HeaderText="Person Name" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="House Name" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="po" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="District" 
                    SortExpression="district" />
                <asp:BoundField DataField="bkdate" HeaderText="Bk Date" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="Status" 
                    SortExpression="status" />
                <asp:BoundField DataField="allotquantity" HeaderText="Alloted quantity" 
                    SortExpression="allotquantity" />
                <asp:BoundField DataField="dtofdelivery" HeaderText="Dt of Delivery" 
                    SortExpression="dtofdelivery" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [usrmattb] WHERE [bookid] = @original_bookid AND [rid] = @original_rid AND (([mid] = @original_mid) OR ([mid] IS NULL AND @original_mid IS NULL)) AND (([howmany] = @original_howmany) OR ([howmany] IS NULL AND @original_howmany IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([allotquantity] = @original_allotquantity) OR ([allotquantity] IS NULL AND @original_allotquantity IS NULL)) AND (([dtofdelivery] = @original_dtofdelivery) OR ([dtofdelivery] IS NULL AND @original_dtofdelivery IS NULL))" 
            InsertCommand="INSERT INTO [usrmattb] ([rid], [mid], [howmany], [personname], [hsname], [po], [place], [district], [bkdate], [status], [allotquantity], [dtofdelivery]) VALUES (@rid, @mid, @howmany, @personname, @hsname, @po, @place, @district, @bkdate, @status, @allotquantity, @dtofdelivery)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [usrmattb]" 
            UpdateCommand="UPDATE [usrmattb] SET [rid] = @rid, [mid] = @mid, [howmany] = @howmany, [personname] = @personname, [hsname] = @hsname, [po] = @po, [place] = @place, [district] = @district, [bkdate] = @bkdate, [status] = @status, [allotquantity] = @allotquantity, [dtofdelivery] = @dtofdelivery WHERE [bookid] = @original_bookid AND [rid] = @original_rid AND (([mid] = @original_mid) OR ([mid] IS NULL AND @original_mid IS NULL)) AND (([howmany] = @original_howmany) OR ([howmany] IS NULL AND @original_howmany IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([allotquantity] = @original_allotquantity) OR ([allotquantity] IS NULL AND @original_allotquantity IS NULL)) AND (([dtofdelivery] = @original_dtofdelivery) OR ([dtofdelivery] IS NULL AND @original_dtofdelivery IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_bookid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_mid" Type="String" />
                <asp:Parameter Name="original_howmany" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="String" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_allotquantity" Type="Int64" />
                <asp:Parameter Name="original_dtofdelivery" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="mid" Type="String" />
                <asp:Parameter Name="howmany" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="allotquantity" Type="Int64" />
                <asp:Parameter Name="dtofdelivery" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="mid" Type="String" />
                <asp:Parameter Name="howmany" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="allotquantity" Type="Int64" />
                <asp:Parameter Name="dtofdelivery" Type="String" />
                <asp:Parameter Name="original_bookid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_mid" Type="String" />
                <asp:Parameter Name="original_howmany" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="String" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_allotquantity" Type="Int64" />
                <asp:Parameter Name="original_dtofdelivery" Type="String" />
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

