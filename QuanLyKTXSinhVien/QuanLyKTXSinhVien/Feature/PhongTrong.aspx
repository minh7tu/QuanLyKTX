<%@ Page Title="Phòng trống" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="PhongTrong.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.PhongTrong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <table style="width: 50%;text-align:center" class="table-light">
        <tr>
            <td>Lựa chọn dãy nhà:</td>
            <td>Lựa chọn giới tính:</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlDayNha" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MaDN" DataValueField="MaDN"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaDN] FROM [DAYNHA]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlGioiTinh" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGioiTinh_SelectedIndexChanged">
                    <asp:ListItem>Chọn giới tính</asp:ListItem>
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" OnClick="btnTimKiem_Click" /></td>
        </tr>
    </table>
    <br />
</asp:Content>
