<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside id="colorlib-hero">
  <div class="flexslider">
    <ul class="slides">
      <li style="background-image: url(images/img_bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">Men's</h1>
                  <h2 class="head-2">Shoes</h2>
                  <h2 class="head-3">Collection</h2>
                  <p class="category"><span>New trending shoes</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/img_bg_2.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">Huge</h1>
                  <h2 class="head-2">Sale</h2>
                  <h2 class="head-3"><strong class="font-weight-bold">50%</strong> Off</h2>
                  <p class="category"><span>Big sale sandals</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/img_bg_3.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6 offset-sm-3 text-center slider-text">
              <div class="slider-text-inner">
                <div class="desc">
                  <h1 class="head-1">New</h1>
                  <h2 class="head-2">Arrival</h2>
                  <h2 class="head-3">up to <strong class="font-weight-bold">30%</strong> off</h2>
                  <p class="category"><span>New stylish shoes for men</span></p>
                  <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</aside>







<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary"></h6>
<div>
  <p></p>
</div>
    <div class="row">
      <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
        <h2>상품 확인</h2>
      </div>
    </div>

    <form action="/item/search" method="get" id="search_form" class="form-inline well">
      <div class="form-group">
        <label class="control-label col-sm-2" for="name">Name:</label>
        <div class="col-sm-10">
          <input type="text" name="name" class="form-control" id="name" placeholder="Enter title"
                 value="${ms.name}"  >

        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="price">Price:</label>
        <div class="col-sm-10">
          <input type="number" name="price" class="form-control" id="price" placeholder="Enter title"
                 value="${ms.price}"
          >
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="startdate">Start Date:</label>
        <div class="col-sm-10">
          <input type="date" name="startdate" class="form-control" id="startdate" placeholder="Enter title"
                 value="${ms.startdate}"
          >
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="enddate">End Date:</label>
        <div class="col-sm-10">
          <input type="date" name="enddate" class="form-control" id="enddate" placeholder="Enter title"
                 value="${ms.enddate}"
          >
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
          <button id="search_btn" type="submit" class="btn btn-info">Search</button>
        </div>
      </div>
    </form>
  </div>



  <div class="colorlib-product">
    <div class="container">
      <div class="row">

        <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
          <h2>Best Sellers</h2>
        </div>
      </div>
      <div class="row row-pb-md">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <tr>
            <th>IMG</th>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>RDATE</th>
          </tr>
          </thead>
          <tfoot>
          <tr>
            <th>IMG</th>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>RDATE</th>
          </tr>
          </tfoot>
          <tbody>
          <c:forEach var="obj" items="${clist}">
            <tr>
              <td>
                <a href="#" data-toggle="modal" data-target="#target${obj.id}">
                  <img id="item_img" src="/uimg/${obj.imgname}">
                </a>
              </td>
              <td><a href="/item/detail?id=${obj.id}">${obj.id}</a></td>
              <td>${obj.name}</td>
              <td><fmt:formatNumber type="number" pattern="###,###원" value="${obj.price}" /></td>
              <td><fmt:formatDate   pattern="yyyy-MM-dd:hh-mm-ss" value="${obj.rdate}"/></td>
            </tr>

            <!-- Modal -->
            <div id="target${obj.id}" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title">Detail Image</h4>
                  </div>
                  <div class="modal-body">
                    <p>${obj.name}</p>
                    <img src="/uimg/${obj.imgname}">

                  </div>
                  <div class="modal-footer">
                    <a href="/item/detail?id=${obj.id}" class="btn btn-info" role="button">Detail</a>
                    <a href="#" class="btn btn-info" data-dismiss="modal" role="button">Close</a>

                  </div>
                </div>

              </div>
            </div>
          </c:forEach>
          </tbody>
        </table>

<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">1</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/2.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">2</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">3</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/4.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">4</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="w-100"></div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/5.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">5</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/6.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">6</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/7.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">7</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/8.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">8</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="w-100"></div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/9.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">9</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/10.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">10</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/11.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">11</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/12.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">12</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="w-100"></div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/13.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">13</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/14.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">14</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/15.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">15</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-3 mb-4 text-center">--%>
<%--          <div class="product-entry border">--%>
<%--            <a href="#" class="prod-img">--%>
<%--              <img src="images/16.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">--%>
<%--            </a>--%>
<%--            <div class="desc">--%>
<%--              <h2><a href="#">16</a></h2>--%>
<%--              <span class="price">$139.00</span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
      <div class="row">
        <div class="col-md-12 text-center">
          <p><a href="#" class="btn btn-primary btn-lg">Shop All Products</a></p>
        </div>
      </div>
    </div>
  </div>








</div>

