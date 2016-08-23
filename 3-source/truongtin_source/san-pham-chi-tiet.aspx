<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="san-pham.aspx">Sản
                phẩm</a>/<span><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
        </div>
    </div>
    <asp:HiddenField ID="hdnSanPhamDetails" runat="server" />
    <a class="a-link-spct" href="<%= hdnSanPhamDetails.Value %>"></a>
    <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="wrapper-details">
                <div id="sliderDetails" class="detail-images">
                    <div class="wrap-images">
                        <%--<div class="detailimg-desktop">
                    <div class="zoom-box">
                    <a id="zoom1" href="assets/images/details-big-2.jpg" class="cloud-zoom" rel="showTitle: false, zoomWidth: '350', adjustY:0, adjustX:5">
                             <img class="img-responsive" src="assets/images/details-img-2.jpg" alt=""/>
                     </a>
                        </div>
                </div>
                <div class="detailimg-mobile">
                    <div class="slider-for">
                        <div class="slide">
                            <img src="assets/images/details-img-1.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <img src="assets/images/details-img-2.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <img src="assets/images/details-img-3.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <img src="assets/images/details-img-4.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <img src="assets/images/details-img-5.jpg" alt=""/>
                        </div>
                    </div>
                </div>--%>
                        <asp:ListView ID="lstProductAlbum" runat="server" DataSourceID="odsProductAlbum"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                        runat="server" />
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div class="detailimg-desktop">
                                    <div class="zoom-box">
                                        <a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                            class="cloud-zoom" rel="showTitle: false, zoomWidth: '350', adjustY:0, adjustX:5">
                                            <img class="img-responsive" src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-1.jpg" %>'
                                                alt="" />
                                        </a>
                                    </div>
                                </div>
                                <div class="detailimg-mobile">
                                    <div class="slider-for">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductAlbum" runat="server" SelectMethod="ProductImageSelectAll"
                            TypeName="TLLib.ProductImage">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="wrapper-in">
                        <div class="wrapper-7">
                            <%--<div class="slider-nav">
                        <div class="slide">
                            <a href='assets/images/details-big-1.jpg' data-img='assets/images/details-img-1.jpg'
                                class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-1.jpg'">
                                <span>
                                    <img src="assets/images/details-small-1.jpg" alt="" /></span> </a>
                        </div>
                        <div class="slide">
                            <a href='assets/images/details-big-2.jpg' data-img='assets/images/details-img-2.jpg'
                                class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-2.jpg'">
                                <span>
                                    <img src="assets/images/details-small-2.jpg" alt="" /></span> </a>
                        </div>
                        <div class="slide">
                            <a href='assets/images/details-big-3.jpg' data-img='assets/images/details-img-3.jpg'
                                class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-3.jpg'">
                                <span>
                                    <img src="assets/images/details-small-3.jpg" alt="" /></span> </a>
                        </div>
                        <div class="slide">
                            <a href='assets/images/details-big-4.jpg' data-img='assets/images/details-img-4.jpg'
                                class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-4.jpg'">
                                <span>
                                    <img src="assets/images/details-small-4.jpg" alt="" /></span> </a>
                        </div>
                        <div class="slide">
                            <a href='assets/images/details-big-5.jpg' data-img='assets/images/details-img-5.jpg'
                                class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-5.jpg'">
                                <span>
                                    <img src="assets/images/details-small-5.jpg" alt="" /></span> </a>
                        </div>
                    </div>--%>
                            <asp:ListView ID="lstProductAlbumBig" runat="server" DataSourceID="odsProductAlbum"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="slide">
                                        <a href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                            data-img='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'
                                            class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'">
                                            <span>
                                                <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-small-1.jpg" %>'
                                                    runat="server" /></span> </a>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div class="slider-nav">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
                <div class="details-content">
                    <h4 class="product-name">
                        <%# Eval("ProductName") %></h4>
                    <div class="product-code">
                        <%# Eval("Tag") %></div>
                    <div class="desription">
                        <ul class="list-info">
                            <li><strong>Loại sản phẩm: </strong>
                                <%# Eval("ProductCategoryName") %></li>
                            <li><strong>Mã sản phẩm (ID): </strong>
                                <%# Eval("Tag") %></li>
                            <li><strong>Giá: </strong>
                                <%# !string.IsNullOrEmpty(Eval("Price").ToString()) ?(string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) :  "" %><%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "" : " VNĐ"%></li>
                        </ul>
                        <%--<p style="font-size: 17px;">
                            <strong>Liên hệ trực tiếp để biết thêm thông tin</strong><br />
                            <strong style="color: #006699;">Hotline:</strong> <span style="color: #006699; font-size: 24px;
                                font-style: italic;">0908 824 208 (Mr.Sơn)</span></p>
                        <p>
                            Hoặc Email: <a style="color: #000; font-style: italic;" href="mailto:cskh@truongtin.vn">
                                <strong>cskh@truongtin.vn</strong></a></p>--%>
                    </div>
                </div>
                <div class="clr">
                </div>
            </div>
            <div class="wrapper-text">
                <h4 class="title-in">
                    <span>Mô tả sản phẩm</span></h4>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="head-lineb">
        <h4 class="title-in">
            <span>sản phẩm tương tự</span></h4>
        <div class="control-pager">
            <a href="#" id="slidePrevo" class="fa fa-angle-left"></a><a href="#" id="slideNexto"
                class="fa fa-angle-right"></a>
        </div>
    </div>
    <div class="wrapper-in">
        <div class="wrapper-15">
            <%--<div class="slider-tree">
                <div class="slide ">
                    <div class="product-box">
                        <div class="product-img">
                            <a href="#">
                                <img src="assets/images/product-img-1.jpg" class="hideo" alt="" />
                            </a>
                        </div>
                        <h4 class="product-name">
                            <a href="san-pham-chi-tiet.aspx">Lò dầu phi 76 (4 đầu mối)</a></h4>
                        <div class="product-code">
                            <strong>MSP</strong></div>
                    </div>
                </div>
                <div class="slide ">
                    <div class="product-box">
                        <div class="product-img">
                            <a href="#">
                                <img src="assets/images/product-img-1.jpg" class="hideo" alt="" />
                            </a>
                        </div>
                        <h4 class="product-name">
                            <a href="san-pham-chi-tiet.aspx">Lò dầu phi 76 (4 đầu mối)</a></h4>
                        <div class="product-code">
                            <strong>MSP</strong></div>
                    </div>
                </div>
                <div class="slide ">
                    <div class="product-box">
                        <div class="product-img">
                            <a href="#">
                                <img src="assets/images/product-img-1.jpg" class="hideo" alt="" />
                            </a>
                        </div>
                        <h4 class="product-name">
                            <a href="san-pham-chi-tiet.aspx">Lò dầu phi 76 (4 đầu mối)</a></h4>
                        <div class="product-code">
                            <strong>MSP</strong></div>
                    </div>
                </div>
                <div class="slide ">
                    <div class="product-box">
                        <div class="product-img">
                            <a href="#">
                                <img src="assets/images/product-img-1.jpg" class="hideo" alt="" />
                            </a>
                        </div>
                        <h4 class="product-name">
                            <a href="san-pham-chi-tiet.aspx">Lò dầu phi 76 (4 đầu mối)</a></h4>
                        <div class="product-code">
                            <strong>MSP</strong></div>
                    </div>
                </div>
                <div class="slide ">
                    <div class="product-box">
                        <div class="product-img">
                            <a href="#">
                                <img src="assets/images/product-img-1.jpg" class="hideo" alt="" />
                            </a>
                        </div>
                        <h4 class="product-name">
                            <a href="san-pham-chi-tiet.aspx">Lò dầu phi 76 (4 đầu mối)</a></h4>
                        <div class="product-code">
                            <strong>MSP</strong></div>
                    </div>
                </div>
                </div>--%>
                <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                        <img class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-img-1.jpg" %>'
                                            runat="server" />
                                    </a>
                                </div>
                                <h4 class="product-name">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                        <%# Eval("ProductName") %></a></h4>
                                <div class="product-code">
                                    <strong>
                                        <%# Eval("Tag") %></strong></div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div class="slider-tree">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                        <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi"
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            
        </div>
    </div>
</asp:Content>
