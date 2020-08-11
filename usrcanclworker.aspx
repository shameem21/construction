<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrcanclworker.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bid" />
                <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" />
                <asp:BoundField DataField="dateofwork" HeaderText="dateofwork" 
                    SortExpression="dateofwork" />
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
                <asp:BoundField DataField="howmany" HeaderText="howmany" 
                    SortExpression="howmany" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [workerbookingtb] WHERE [bid] = @original_bid AND (([rid] = @original_rid) OR ([rid] IS NULL AND @original_rid IS NULL)) AND (([wid] = @original_wid) OR ([wid] IS NULL AND @original_wid IS NULL)) AND (([dateofwork] = @original_dateofwork) OR ([dateofwork] IS NULL AND @original_dateofwork IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([howmany] = @original_howmany) OR ([howmany] IS NULL AND @original_howmany IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
            InsertCommand="INSERT INTO [workerbookingtb] ([rid], [wid], [dateofwork], [personname], [hsname], [po], [place], [district], [bkdate], [howmany], [status]) VALUES (@rid, @wid, @dateofwork, @personname, @hsname, @po, @place, @district, @bkdate, @howmany, @status)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [workerbookingtb] WHERE ([rid] = @rid)" 
            
            UpdateCommand="UPDATE [workerbookingtb] SET [rid] = @rid, [wid] = @wid, [dateofwork] = @dateofwork, [personname] = @personname, [hsname] = @hsname, [po] = @po, [place] = @place, [district] = @district, [bkdate] = @bkdate, [howmany] = @howmany, [status] = @status WHERE [bid] = @original_bid AND (([rid] = @original_rid) OR ([rid] IS NULL AND @original_rid IS NULL)) AND (([wid] = @original_wid) OR ([wid] IS NULL AND @original_wid IS NULL)) AND (([dateofwork] = @original_dateofwork) OR ([dateofwork] IS NULL AND @original_dateofwork IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([howmany] = @original_howmany) OR ([howmany] IS NULL AND @original_howmany IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_bid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_wid" Type="Int64" />
                <asp:Parameter Name="original_dateofwork" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="String" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_howmany" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="wid" Type="Int64" />
                <asp:Parameter Name="dateofwork" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="howmany" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="rid" SessionField="rid" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="wid" Type="Int64" />
                <asp:Parameter Name="dateofwork" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="howmany" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_bid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_wid" Type="Int64" />
                <asp:Parameter Name="original_dateofwork" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="String" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_howmany" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
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
</asp:Content>

