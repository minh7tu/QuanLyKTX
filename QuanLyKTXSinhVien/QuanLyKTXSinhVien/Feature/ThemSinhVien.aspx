<%@ Page Title="Thêm sinh viên" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="ThemSinhVien.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.ThemSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
    <h2>Thêm Sinh Viên</h2>
    <asp:Button ID="btnQuanLySinhVien" runat="server" Height="74px" PostBackUrl="~/Feature/QuanLySinhVien.aspx" Text="Kiểm tra thông tin vừa thêm" Width="239px" />
    <br />
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="588px" Width="840px" BorderWidth="4px">
        <EditItemTemplate>
            MaSV:
            <asp:Label ID="MaSVLabel1" runat="server" Text='<%# Eval("MaSV") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            NgaySinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            NgayDen:
            <asp:TextBox ID="NgayDenTextBox" runat="server" Text='<%# Bind("NgayDen") %>' />
            <br />
            NgayDi:
            <asp:TextBox ID="NgayDiTextBox" runat="server" Text='<%# Bind("NgayDi") %>' />
            <br />
            MaL:
            <asp:TextBox ID="MaLTextBox" runat="server" Text='<%# Bind("MaL") %>' />
            <br />
            MaP:
            <asp:TextBox ID="MaPTextBox" runat="server" Text='<%# Bind("MaP") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <FooterStyle BorderStyle="Dotted" />
        <InsertItemTemplate>
            Mã Sinh Viên:
            <asp:TextBox ID="MaSVTextBox" runat="server" Text='<%# Bind("MaSV") %>' />
            <br />
            <br />
            Họ Tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            <br />
            Giới Tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            <br />
            Ngày Sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            <br />
            Địa Chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            <br />
            Ngày Đến:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NgayDenTextBox" runat="server" Text='<%# Bind("NgayDen") %>' />
            <br />
            <br />
            Ngày Đi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NgayDiTextBox" runat="server" Text='<%# Bind("NgayDi") %>' />
            <br />
            <br />
            Mã Lớp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaL" DataValueField="MaL" Width="188px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaL] FROM [LOP]"></asp:SqlDataSource>
            <br />
            <br />
            Mã Phòng:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="MaP" DataValueField="MaP" Width="189px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaP] FROM [PHONG]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" BorderWidth="4px" Width="93px" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Nhập Lại" BorderWidth="4px" OnClick="InsertCancelButton_Click" Width="118px" />
            
        </InsertItemTemplate>
        <ItemTemplate>
            MaSV:
            <asp:Label ID="MaSVLabel" runat="server" Text='<%# Eval("MaSV") %>' />
            <br />
            HoTen:
            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            NgaySinh:
            <asp:Label ID="NgaySinhLabel" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            DiaChi:
            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            NgayDen:
            <asp:Label ID="NgayDenLabel" runat="server" Text='<%# Bind("NgayDen") %>' />
            <br />
            NgayDi:
            <asp:Label ID="NgayDiLabel" runat="server" Text='<%# Bind("NgayDi") %>' />
            <br />
            MaL:
            <asp:Label ID="MaLLabel" runat="server" Text='<%# Bind("MaL") %>' />
            <br />
            MaP:
            <asp:Label ID="MaPLabel" runat="server" Text='<%# Bind("MaP") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SINHVIEN] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [SINHVIEN] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [NgayDen], [NgayDi], [MaL], [MaP]) VALUES (@MaSV, @HoTen, @GioiTinh, @NgaySinh, @DiaChi, @NgayDen, @NgayDi, @MaL, @MaP)" SelectCommand="SELECT * FROM [SINHVIEN]" UpdateCommand="UPDATE [SINHVIEN] SET [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [NgaySinh] = @NgaySinh, [DiaChi] = @DiaChi, [NgayDen] = @NgayDen, [NgayDi] = @NgayDi, [MaL] = @MaL, [MaP] = @MaP WHERE [MaSV] = @MaSV">
    <DeleteParameters>
        <asp:Parameter Name="MaSV" Type="String" />
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
        <asp:Parameter Name="MaSV" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

    </center>
</asp:Content>
