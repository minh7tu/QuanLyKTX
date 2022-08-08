<%@ Page Title="Thêm phòng" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="ThemPhong.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.ThemPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
        <br />
        <h2>THÊM THÔNG TIN PHÒNG</h2>
        <br />
        <div>
            <h2>
                &nbsp;<asp:Button runat="server" Height="50px" PostBackUrl="~/Feature/HienThiPhong.aspx" Text="Trở về Quản lý phòng" Width="200px" />
            </h2>
        </div>
        <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaP" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="420px">
        <EditItemTemplate>
            MaP:
            <asp:Label ID="MaPLabel1" runat="server" Text='<%# Eval("MaP") %>' />
            <br />
            SoNguoiTD:
            <asp:TextBox ID="SoNguoiTDTextBox" runat="server" Text='<%# Bind("SoNguoiTD") %>' />
            <br />
            SoNguoiHT:
            <asp:TextBox ID="SoNguoiHTTextBox" runat="server" Text='<%# Bind("SoNguoiHT") %>' />
            <br />
            TrangThai:
            <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
            <br />
            YeuCau:
            <asp:TextBox ID="YeuCauTextBox" runat="server" Text='<%# Bind("YeuCau") %>' />
            <br />
            MaDN:
            <asp:TextBox ID="MaDNTextBox" runat="server" Text='<%# Bind("MaDN") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp; Mã Phòng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MaPTextBox" runat="server" Text='<%# Bind("MaP") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Số Người Tối Đa:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SoNguoiTDTextBox" runat="server" Text='<%# Bind("SoNguoiTD") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;Số Người Hiện Tại:
            <asp:TextBox ID="SoNguoiHTTextBox" runat="server" Text='<%# Bind("SoNguoiHT") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Trạng Thái:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TrangThaiTextBox" runat="server" Text='<%# Bind("TrangThai") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Yêu Cầu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="YeuCauTextBox" runat="server" Text='<%# Bind("YeuCau") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Mã Dãy Nhà:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MaDNTextBox" runat="server" Text='<%# Bind("MaDN") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            MaP:
            <asp:Label ID="MaPLabel" runat="server" Text='<%# Eval("MaP") %>' />
            <br />
            SoNguoiTD:
            <asp:Label ID="SoNguoiTDLabel" runat="server" Text='<%# Bind("SoNguoiTD") %>' />
            <br />
            SoNguoiHT:
            <asp:Label ID="SoNguoiHTLabel" runat="server" Text='<%# Bind("SoNguoiHT") %>' />
            <br />
            TrangThai:
            <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Bind("TrangThai") %>' />
            <br />
            YeuCau:
            <asp:Label ID="YeuCauLabel" runat="server" Text='<%# Bind("YeuCau") %>' />
            <br />
            MaDN:
            <asp:Label ID="MaDNLabel" runat="server" Text='<%# Bind("MaDN") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
