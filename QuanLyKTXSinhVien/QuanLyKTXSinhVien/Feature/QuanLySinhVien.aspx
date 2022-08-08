<%@ Page Title="Quản lý sinh viên" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="QuanLySinhVien.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.QuanLySinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
    <h2>QUẢN LÝ SINH VIÊN </h2>
    <h2>&nbsp;<asp:Button runat="server" Height="44px" PostBackUrl="~/Feature/TimKiemSinhVien.aspx" Text="Tìm Kiếm Sinh Viên" Width="279px" Font-Size="14pt" />
        </h2>
        </center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" ForeColor="#333333" HorizontalAlign="Center" BorderWidth="2px">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã Sinh Viên" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="NgayDen" HeaderText="Ngày Đến" SortExpression="NgayDen" />
            <asp:BoundField DataField="NgayDi" HeaderText="Ngày Đi" SortExpression="NgayDi" />
            <asp:BoundField DataField="MaL" HeaderText="Mã Lớp" SortExpression="MaL" />
            <asp:BoundField DataField="MaP" HeaderText="Mã Phòng" SortExpression="MaP" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Hoàn thành" HeaderText="Sửa thông tin - Thêm thông tin"></asp:CommandField>
        </Columns>
        <RowStyle BorderWidth="1px" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SINHVIEN] WHERE [MaSV] = @original_MaSV AND (([HoTen] = @original_HoTen) OR ([HoTen] IS NULL AND @original_HoTen IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([NgayDen] = @original_NgayDen) OR ([NgayDen] IS NULL AND @original_NgayDen IS NULL)) AND (([NgayDi] = @original_NgayDi) OR ([NgayDi] IS NULL AND @original_NgayDi IS NULL)) AND (([MaL] = @original_MaL) OR ([MaL] IS NULL AND @original_MaL IS NULL)) AND (([MaP] = @original_MaP) OR ([MaP] IS NULL AND @original_MaP IS NULL))" InsertCommand="INSERT INTO [SINHVIEN] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [NgayDen], [NgayDi], [MaL], [MaP]) VALUES (@MaSV, @HoTen, @GioiTinh, @NgaySinh, @DiaChi, @NgayDen, @NgayDi, @MaL, @MaP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SINHVIEN]" UpdateCommand="UPDATE [SINHVIEN] SET [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [NgaySinh] = @NgaySinh, [DiaChi] = @DiaChi, [NgayDen] = @NgayDen, [NgayDi] = @NgayDi, [MaL] = @MaL, [MaP] = @MaP WHERE [MaSV] = @original_MaSV AND (([HoTen] = @original_HoTen) OR ([HoTen] IS NULL AND @original_HoTen IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([NgayDen] = @original_NgayDen) OR ([NgayDen] IS NULL AND @original_NgayDen IS NULL)) AND (([NgayDi] = @original_NgayDi) OR ([NgayDi] IS NULL AND @original_NgayDi IS NULL)) AND (([MaL] = @original_MaL) OR ([MaL] IS NULL AND @original_MaL IS NULL)) AND (([MaP] = @original_MaP) OR ([MaP] IS NULL AND @original_MaP IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MaSV" Type="String" />
            <asp:Parameter Name="original_HoTen" Type="String" />
            <asp:Parameter Name="original_GioiTinh" Type="String" />
            <asp:Parameter DbType="Date" Name="original_NgaySinh" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter DbType="Date" Name="original_NgayDen" />
            <asp:Parameter DbType="Date" Name="original_NgayDi" />
            <asp:Parameter Name="original_MaL" Type="String" />
            <asp:Parameter Name="original_MaP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSV" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter DbType="Date" Name="NgayDen" />
            <asp:Parameter DbType="Date" Name="NgayDi" />
            <asp:Parameter Name="MaL" Type="String" />
            <asp:Parameter Name="MaP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter DbType="Date" Name="NgayDen" />
            <asp:Parameter DbType="Date" Name="NgayDi" />
            <asp:Parameter Name="MaL" Type="String" />
            <asp:Parameter Name="MaP" Type="String" />
            <asp:Parameter Name="original_MaSV" Type="String" />
            <asp:Parameter Name="original_HoTen" Type="String" />
            <asp:Parameter Name="original_GioiTinh" Type="String" />
            <asp:Parameter DbType="Date" Name="original_NgaySinh" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter DbType="Date" Name="original_NgayDen" />
            <asp:Parameter DbType="Date" Name="original_NgayDi" />
            <asp:Parameter Name="original_MaL" Type="String" />
            <asp:Parameter Name="original_MaP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
