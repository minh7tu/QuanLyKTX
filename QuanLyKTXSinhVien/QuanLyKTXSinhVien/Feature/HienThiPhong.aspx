<%@ Page Title="Quản lý phòng" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="HienThiPhong.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.HienThiPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
        <br />
        <h2>DANH SÁCH PHÒNG</h2>
        <br />
        <div>
            <h2>
                &nbsp;<asp:Button runat="server" Height="50px" PostBackUrl="#" Text="Tìm Kiếm Phòng" Width="200px" />
                &nbsp;<asp:Button runat="server" Height="50px" PostBackUrl="~/Feature/ThemPhong.aspx" Text="Thêm Phòng" Width="200px" />
            </h2>
        </div>
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaP" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaP" HeaderText="Mã Phòng" ReadOnly="True" SortExpression="MaP" />
            <asp:BoundField DataField="SoNguoiTD" HeaderText="Số Người Tối Đa" SortExpression="SoNguoiTD" />
            <asp:BoundField DataField="SoNguoiHT" HeaderText="Số Người Hiện Tại" SortExpression="SoNguoiHT" />
            <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
            <asp:BoundField DataField="YeuCau" HeaderText="Yêu Cầu" SortExpression="YeuCau" />
            <asp:BoundField DataField="MaDN" HeaderText="Mã Dãy Nhà" SortExpression="MaDN" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Sửa - Xóa" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [PHONG] WHERE [MaP] = @MaP" InsertCommand="INSERT INTO [PHONG] ([MaP], [SoNguoiTD], [SoNguoiHT], [TrangThai], [YeuCau], [MaDN]) VALUES (@MaP, @SoNguoiTD, @SoNguoiHT, @TrangThai, @YeuCau, @MaDN)" SelectCommand="SELECT * FROM [PHONG]" UpdateCommand="UPDATE [PHONG] SET [SoNguoiTD] = @SoNguoiTD, [SoNguoiHT] = @SoNguoiHT, [TrangThai] = @TrangThai, [YeuCau] = @YeuCau, [MaDN] = @MaDN WHERE [MaP] = @MaP">
        <DeleteParameters>
            <asp:Parameter Name="MaP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaP" Type="String" />
            <asp:Parameter Name="SoNguoiTD" Type="Int32" />
            <asp:Parameter Name="SoNguoiHT" Type="Int32" />
            <asp:Parameter Name="TrangThai" Type="String" />
            <asp:Parameter Name="YeuCau" Type="String" />
            <asp:Parameter Name="MaDN" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoNguoiTD" Type="Int32" />
            <asp:Parameter Name="SoNguoiHT" Type="Int32" />
            <asp:Parameter Name="TrangThai" Type="String" />
            <asp:Parameter Name="YeuCau" Type="String" />
            <asp:Parameter Name="MaDN" Type="String" />
            <asp:Parameter Name="MaP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>
