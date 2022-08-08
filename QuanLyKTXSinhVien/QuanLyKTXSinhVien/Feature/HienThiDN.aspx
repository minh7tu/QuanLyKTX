<%@ Page Title="Quản lý dãy nhà" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="HienThiDN.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.HienThiDN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
        <br />
        <h2>Danh sách dãy nhà</h2>
        <br />
        <div>
            <h2>
                &nbsp;<asp:Button runat="server" Height="40px" PostBackUrl="~/Feature/TimKiemDayNha.aspx" Text="Tìm Kiếm Dãy Nhà" Width="200px" />
                &nbsp;<asp:Button runat="server" Height="40px" PostBackUrl="~/Feature/ThemDayNha.aspx" Text="Thêm Dãy Nhà" Width="200px" />
            </h2>
        </div>
        <br />
    <asp:GridView ID="gvDayNha" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDN" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaDN" HeaderText="Mã Dãy Nhà" ReadOnly="True" SortExpression="MaDN">
            <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TenDN" HeaderText="Tên Dãy Nhà" SortExpression="TenDN">
            <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi">
            <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Hoàn thành" HeaderText="Sửa và Xóa dãy nhà">
            <HeaderStyle Height="40px" HorizontalAlign="Center" Width="250px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DAYNHA] WHERE [MaDN] = @MaDN" InsertCommand="INSERT INTO [DAYNHA] ([MaDN], [TenDN], [DiaChi]) VALUES (@MaDN, @TenDN, @DiaChi)" SelectCommand="SELECT * FROM [DAYNHA]" UpdateCommand="UPDATE [DAYNHA] SET [TenDN] = @TenDN, [DiaChi] = @DiaChi WHERE [MaDN] = @MaDN">
        <DeleteParameters>
            <asp:Parameter Name="MaDN" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaDN" Type="String" />
            <asp:Parameter Name="TenDN" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenDN" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="MaDN" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <br />
    </center>
</asp:Content>
