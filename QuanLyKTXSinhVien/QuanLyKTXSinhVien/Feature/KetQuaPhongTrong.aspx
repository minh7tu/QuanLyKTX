<%@ Page Title="Kết quả tìm kiếm" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="KetQuaPhongTrong.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.KetQuaPhongTrong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaP" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            MaP:
            <asp:Label ID="MaPLabel" runat="server" Text='<%# Eval("MaP") %>' />
            <br />
            YeuCau:
            <asp:Label ID="YeuCauLabel" runat="server" Text='<%# Eval("YeuCau") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [MaP], [YeuCau] FROM [PHONG] WHERE [SoNguoiHT] &lt; [SoNguoiTD] ">
    </asp:SqlDataSource>
    <div>
        <asp:Button ID="btnThemSinhVien" runat="server" Text="Đăng ký phòng" OnClick="btnThemSinhVien_Click" />
    </div>
</asp:Content>
