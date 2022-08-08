<%@ Page Title="Tìm kiếm sinh viên" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="TimKiemSinhVien.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.TimKiemSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
    <h2>Tìm Kiếm Sinh Viên</h2>
    <p>
    <asp:Label ID="Label1" runat="server" Text="Nhập mã sinh viên " ForeColor="Red"></asp:Label>
    </p>
    <asp:TextBox ID="txtTimKiem" runat="server" Height="48px" Width="243px"></asp:TextBox>
    <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="32px" Width="144px" OnClick="btnTimKiem_Click" />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" Visible="False" Width="1400px" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã Sinh Viên" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính " SortExpression="GioiTinh" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="NgayDen" HeaderText="Ngày Đến" SortExpression="NgayDen" />
            <asp:BoundField DataField="NgayDi" HeaderText="Ngày Đi" SortExpression="NgayDi" />
            <asp:BoundField DataField="MaL" HeaderText="Mã Lớp" SortExpression="MaL" />
            <asp:BoundField DataField="MaP" HeaderText="Mã Phòng" SortExpression="MaP" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Hoàn thành" HeaderText="Sửa thông tin - Xóa thông tin"></asp:CommandField>
        </Columns>
        <EditRowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Height="52px" PostBackUrl="~/Feature/QuanLySinhVien.aspx" Text="Quay lại trang quản lý sinh viên" Width="313px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SINHVIEN] WHERE [MaSV] = @original_MaSV AND (([HoTen] = @original_HoTen) OR ([HoTen] IS NULL AND @original_HoTen IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([NgayDen] = @original_NgayDen) OR ([NgayDen] IS NULL AND @original_NgayDen IS NULL)) AND (([NgayDi] = @original_NgayDi) OR ([NgayDi] IS NULL AND @original_NgayDi IS NULL)) AND (([MaL] = @original_MaL) OR ([MaL] IS NULL AND @original_MaL IS NULL)) AND (([MaP] = @original_MaP) OR ([MaP] IS NULL AND @original_MaP IS NULL))" InsertCommand="INSERT INTO [SINHVIEN] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [NgayDen], [NgayDi], [MaL], [MaP]) VALUES (@MaSV, @HoTen, @GioiTinh, @NgaySinh, @DiaChi, @NgayDen, @NgayDi, @MaL, @MaP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SINHVIEN] WHERE ([MaSV] = @MaSV)" UpdateCommand="UPDATE [SINHVIEN] SET [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [NgaySinh] = @NgaySinh, [DiaChi] = @DiaChi, [NgayDen] = @NgayDen, [NgayDi] = @NgayDi, [MaL] = @MaL, [MaP] = @MaP WHERE [MaSV] = @original_MaSV AND (([HoTen] = @original_HoTen) OR ([HoTen] IS NULL AND @original_HoTen IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([NgayDen] = @original_NgayDen) OR ([NgayDen] IS NULL AND @original_NgayDen IS NULL)) AND (([NgayDi] = @original_NgayDi) OR ([NgayDi] IS NULL AND @original_NgayDi IS NULL)) AND (([MaL] = @original_MaL) OR ([MaL] IS NULL AND @original_MaL IS NULL)) AND (([MaP] = @original_MaP) OR ([MaP] IS NULL AND @original_MaP IS NULL))">
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
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTimKiem" Name="MaSV" PropertyName="Text" Type="String" />
        </SelectParameters>
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
        </center>
</asp:Content>
