<%@ Page Title="Tìm kiếm dãy nhà" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="TimKiemDayNha.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.TimKiemDayNha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <center>
        <br />
        <h2>Tìm kiếm dãy nhà</h2>
        <br />
        <div>
            <asp:TextBox ID="txtTimKiem" runat="server" Height="25px" Width="200px" ForeColor="#00CCFF"></asp:TextBox>
            <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" ForeColor="#00CCFF" Height="25px" Width="100px" OnClick="btnTimKiem_Click" />
            <asp:Button ID="btnQuayLaiDS" runat="server" Text="Quay lại danh sách dãy nhà " ForeColor="#00CCFF" Height="25px" Width="200px" PostBackUrl="~/Feature/HienThiDN.aspx" />
        </div>
        <br />
        <div>
            <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FF9900" Text="Bạn cần nhập mã dãy nhà!" Visible="False"></asp:Label>
            <asp:Label ID="lblthongbao1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#FF9900" Text="Mã dãy nhà không tồn tại, mời bạn nhập  mã khác!" Visible="False"></asp:Label>
        </div>
        <br />
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDN" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaDN" HeaderText="Mã Dãy Nhà" ReadOnly="True" SortExpression="MaDN" >
                <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TenDN" HeaderText="Tên Dãy Nhà" SortExpression="TenDN" >
                <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" >
                <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Sửa và Xóa dãy nhà" UpdateText="Hoàn Thành" >
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DAYNHA] WHERE [MaDN] = @MaDN" InsertCommand="INSERT INTO [DAYNHA] ([MaDN], [TenDN], [DiaChi]) VALUES (@MaDN, @TenDN, @DiaChi)" SelectCommand="SELECT * FROM [DAYNHA] WHERE ([MaDN] = @MaDN)" UpdateCommand="UPDATE [DAYNHA] SET [TenDN] = @TenDN, [DiaChi] = @DiaChi WHERE [MaDN] = @MaDN">
            <DeleteParameters>
                <asp:Parameter Name="MaDN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaDN" Type="String" />
                <asp:Parameter Name="TenDN" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTimkiem" Name="MaDN" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenDN" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="MaDN" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
        <br />
    </center>
</asp:Content>
