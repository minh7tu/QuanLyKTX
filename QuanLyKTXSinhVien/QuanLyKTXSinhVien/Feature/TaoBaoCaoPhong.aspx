<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaoBaoCaoPhong.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.TaoBaoCaoPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Tạo Báo Cáo Phòng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Style/Style1.css" />
    <link rel="shortcut icon" type="image/x-icon" href="../Images/Logo.ico" />
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <div class="container bg-info">
                <div class="pt-5">
                    <h1 style="text-align:center">QUẢN LÝ KÍ TÚC XÁ </h1>
                </div>

                <ul class="nav pb-2">
                    <li class="nav-item border border-dark">
                        <a class="nav-link active text-dark" aria-current="page" href="../Feature/TrangChu.aspx">Trang chủ </a>
                    </li>
                    <li class="nav-item border border-dark">
                        <a class="nav-link text-dark" href="#">Phòng ở</a>
                    </li>
                    <li class="nav-item dropdown border border-dark">
                        <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Quản lý
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="../Feature/HienThiDN.aspx">Dãy nhà</a></li>
                            <li><a class="dropdown-item" href="../Feature/HienThiPhong.aspx">Phòng</a></li>
                            <li><a class="dropdown-item" href="../Feature/QuanLySinhVien.aspx">Sinh viên</a></li>
                        </ul>
                    </li>
                    <li class="nav-item border border-dark">
                        <a href="../Feature/TaoBaoCaoPhong.aspx" class="nav-link text-dark">Lập báo cáo</a>
                    </li>
                    <li class="nav-item border border-dark">
                        <a class="nav-link text-dark">Liên hệ</a>
                    </li>
                </ul>
                <div class="bg-light">
                    <nav class="navbar navbar-expand-lg bg-light">
                        <div class="container-fluid">
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle border border-1" href="#" role="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Tạo báo cáo
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="TaoBaoCaoPhong.aspx">Tạo báo cáo cho
                                                    phòng sinh viên</a></li>
                                            <li><a class="dropdown-item" href="TaoBaoCaoDayNha.aspx">Tạo báo cáo cho
                                                    dãy nhà</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <div class="ps-3 pb-4">
                        <asp:Label ID="Label1" runat="server" Text="Nhập vào mã phòng muốn tạo báo cáo"></asp:Label>
                        <asp:TextBox ID="txtBC" runat="server" Width="151px"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Text="Xác Nhận" />
                        
                    </div>

                    <div class="p-3">
                        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" Width="100%" AutoGenerateColumns="False" DataKeyNames="MaSV">
                            <Columns>
                                <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ReadOnly="True"
                                    SortExpression="MaSV" />
                                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
                                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                                <asp:BoundField DataField="NgayDen" HeaderText="Ngày Đến" SortExpression="NgayDen" />
                                <asp:BoundField DataField="NgayDi" HeaderText="Ngày Đi" SortExpression="NgayDi" />
                                <asp:BoundField DataField="MaL" HeaderText="Mã Lớp" SortExpression="MaL" />
                                <asp:BoundField DataField="MaP" HeaderText="Mã Phòng" SortExpression="MaP" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [MaP], [MaSV], [HoTen], [GioiTinh], [DiaChi], [NgaySinh], [NgayDen], [NgayDi], [MaL] FROM [SINHVIEN] WHERE ([MaP] = @MaP)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtBC" Name="MaP" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <div class="text-center pt-3 pb-3">
                        <asp:Button ID="Button4" runat="server" Text="In Báo Cáo" OnClick="Button4_Click" />
                    </div>
                </div>

                <footer class="footer pt-5">
                    <div class="row">
                        <div class="col-6">
                            <div class="footer-col">
                                <h4>Đội ngũ phát triển - Nhóm 03</h4>
                                <ul>
                                    <li><a href="#">Nguyễn Thị Thu An</a></li>
                                    <li><a href="#">Đoàn Đức Hải</a></li>
                                    <li><a href="#">Nguyễn Đắc Hùng</a></li>
                                    <li><a href="#">Bùi Chính Ngọc</a></li>
                                    <li><a href="#">Nguyễn Đình Thuyết</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="footer-col" style="float: left">
                                <h4>Thông tin liên hệ</h4>
                                <div class="sosial-links">
                                    <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </form>
</body>

</html>
