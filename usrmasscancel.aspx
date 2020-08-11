<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usrmasscancel.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="massbid" DataSourceID="SqlDataSource1" ForeColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="massbid" HeaderText="massbid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="massbid" />
                <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                <asp:BoundField DataField="dateowork" HeaderText="dateowork" 
                    SortExpression="dateowork" />
                <asp:BoundField DataField="personname" HeaderText="personname" 
                    SortExpression="personname" />
                <asp:BoundField DataField="hsname" HeaderText="hsname" 
                    SortExpression="hsname" />
                <asp:BoundField DataField="po" HeaderText="po" SortExpression="po" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                <asp:BoundField DataField="district" HeaderText="district" 
                    SortExpression="district" />
                <asp:BoundField DataField="worktype" HeaderText="worktype" 
                    SortExpression="worktype" />
                <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                <asp:BoundField DataField="numberofworkers" HeaderText="numberofworkers" 
                    SortExpression="numberofworkers" />
                <asp:BoundField DataField="bkdate" HeaderText="bkdate" 
                    SortExpression="bkdate" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [masswrkrbooktb] WHERE [massbid] = @original_massbid AND (([rid] = @original_rid) OR ([rid] IS NULL AND @original_rid IS NULL)) AND (([dateowork] = @original_dateowork) OR ([dateowork] IS NULL AND @original_dateowork IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([worktype] = @original_worktype) OR ([worktype] IS NULL AND @original_worktype IS NULL)) AND (([days] = @original_days) OR ([days] IS NULL AND @original_days IS NULL)) AND (([numberofworkers] = @original_numberofworkers) OR ([numberofworkers] IS NULL AND @original_numberofworkers IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
            InsertCommand="INSERT INTO [masswrkrbooktb] ([rid], [dateowork], [personname], [hsname], [po], [place], [district], [worktype], [days], [numberofworkers], [bkdate], [status]) VALUES (@rid, @dateowork, @personname, @hsname, @po, @place, @district, @worktype, @days, @numberofworkers, @bkdate, @status)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [masswrkrbooktb]" 
            UpdateCommand="UPDATE [masswrkrbooktb] SET [rid] = @rid, [dateowork] = @dateowork, [personname] = @personname, [hsname] = @hsname, [po] = @po, [place] = @place, [district] = @district, [worktype] = @worktype, [days] = @days, [numberofworkers] = @numberofworkers, [bkdate] = @bkdate, [status] = @status WHERE [massbid] = @original_massbid AND (([rid] = @original_rid) OR ([rid] IS NULL AND @original_rid IS NULL)) AND (([dateowork] = @original_dateowork) OR ([dateowork] IS NULL AND @original_dateowork IS NULL)) AND (([personname] = @original_personname) OR ([personname] IS NULL AND @original_personname IS NULL)) AND (([hsname] = @original_hsname) OR ([hsname] IS NULL AND @original_hsname IS NULL)) AND (([po] = @original_po) OR ([po] IS NULL AND @original_po IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL)) AND (([district] = @original_district) OR ([district] IS NULL AND @original_district IS NULL)) AND (([worktype] = @original_worktype) OR ([worktype] IS NULL AND @original_worktype IS NULL)) AND (([days] = @original_days) OR ([days] IS NULL AND @original_days IS NULL)) AND (([numberofworkers] = @original_numberofworkers) OR ([numberofworkers] IS NULL AND @original_numberofworkers IS NULL)) AND (([bkdate] = @original_bkdate) OR ([bkdate] IS NULL AND @original_bkdate IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_massbid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_dateowork" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="Int64" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_worktype" Type="String" />
                <asp:Parameter Name="original_days" Type="Int64" />
                <asp:Parameter Name="original_numberofworkers" Type="Int64" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="dateowork" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="Int64" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="worktype" Type="String" />
                <asp:Parameter Name="days" Type="Int64" />
                <asp:Parameter Name="numberofworkers" Type="Int64" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="rid" Type="Int64" />
                <asp:Parameter Name="dateowork" Type="String" />
                <asp:Parameter Name="personname" Type="String" />
                <asp:Parameter Name="hsname" Type="String" />
                <asp:Parameter Name="po" Type="Int64" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="worktype" Type="String" />
                <asp:Parameter Name="days" Type="Int64" />
                <asp:Parameter Name="numberofworkers" Type="Int64" />
                <asp:Parameter Name="bkdate" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_massbid" Type="Int64" />
                <asp:Parameter Name="original_rid" Type="Int64" />
                <asp:Parameter Name="original_dateowork" Type="String" />
                <asp:Parameter Name="original_personname" Type="String" />
                <asp:Parameter Name="original_hsname" Type="String" />
                <asp:Parameter Name="original_po" Type="Int64" />
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_district" Type="String" />
                <asp:Parameter Name="original_worktype" Type="String" />
                <asp:Parameter Name="original_days" Type="Int64" />
                <asp:Parameter Name="original_numberofworkers" Type="Int64" />
                <asp:Parameter Name="original_bkdate" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

