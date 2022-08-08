<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QuanLyKTXSinhVien.Feature.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>TT QUẢN LÝ KTX</h2>
    <pre>
        Tổ chức, quản lý toàn diện khu KTX sinh viên. 
        Bố trí xếp ở sinh viên nội trú đúng đối tượng, số lượng,
        đảm bảo thu lệ phí lưu trú của sinh viên nộp về trường đúng qui định; 
        Đảm bảo đủ các điều kiện phục vụ sinh hoạt và học tập của sinh viên nội trú:
        Điện, nước sinh hoạt, dịch vụ ăn uống.
        An ninh trật tự, vệ sinh môi trường
        Hoạt động thể thao và văn hoá tinh thần trong khu KTX
    </pre>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../Images/Ngoi-truong.png" alt=""/>
                </div>
            <div class="carousel-item">
                <img class="d-block w-100" src=".." alt=""/>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src=".." alt=""/>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        </div>
</asp:Content>
