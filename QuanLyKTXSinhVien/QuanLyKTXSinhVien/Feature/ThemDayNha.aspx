<%@ Page Title="Thêm dãy nhà" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="ThemDayNha.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.ThemDayNha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
    <title>Thêm thông tin dãy nhà</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border: 2px solid #33CCFF;
        }
        .auto-style2 {
            width: 222px;
        }
        table{
            margin: 20px 30px;
            margin-bottom: 50px;
            text-align: center;
        }
        .auto-style3 {
            width: 549px;
        }
        td {
            text-align: center;
            height: 50px;
        }
        .auto-style4 {
            margin-bottom: 0;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
    <br />
    <h2>Thêm dãy nhà</h2>
    <div>
        <table  align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <th colspan="2">Thêm Thông tin dãy nhà</th>
            </tr>
            <tr>
                <td class="auto-style2">Mã dãy nhà</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaDN" runat="server" Width="330px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tên dãy nhà</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTenDN" runat="server" Width="330px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Địa chỉ</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDiaChi" runat="server" Width="330px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnThem" runat="server" Text="Thêm mới" Height="30px" Width="100px" OnClick="btnThem_Click" />
                    <asp:Button ID="btnHoanTac" runat="server" Text="Hoàn tác" Height="30px" Width="100px" CssClass="auto-style4" OnClick="btnHoanTac_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FF9900" Text="Mã dãy nhà đã tồn tại, vui lòng nhập mã khác !" Visible="False"></asp:Label>
        <asp:Label ID="lblthongbao1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FF9900" Text="Vui lòng nhập mã dãy nhà !" Visible="False"></asp:Label>
        <asp:Label ID="lblthongbao2" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FF9900" Text="Vui lòng nhập tên dãy  nhà !" Visible="False"></asp:Label>
        <br />
    </div>
    </center>
</asp:Content>
