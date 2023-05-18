<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<p></p>
<p></p>
<p></p>
<p></p><p></p>


<div class="row">
  <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
    <h2>상품확인</h2>
  </div>
</div>


<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 >재고조회</h6>
    <form action="/item/search" method="get" id="search_form" class="form-inline well">



  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-10">
      <input type="text" name="name" class="form-control" id="name" placeholder="Enter title"
             value="${ms.name}"
      >
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
</div>



<div class="colorlib-product">
  <div class="container">
    <div class="row row-pb-md">
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">1</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/2.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">2</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">3</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/4.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">4</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="w-100"></div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/5.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">5</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/6.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">6</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/7.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">7</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/8.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">8</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="w-100"></div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/9.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">9</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/10.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">10</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/11.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">11</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/12.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">12</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="w-100"></div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/13.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">13</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/14.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">14</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/15.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">15</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
      <div class="col-lg-3 mb-4 text-center">
        <div class="product-entry border">
          <a href="#" class="prod-img">
            <img src="images/16.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
          </a>
          <div class="desc">
            <h2><a href="#">16</a></h2>
            <span class="price">$139.00</span>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">
        <p><a href="#" class="btn btn-primary btn-lg">Shop All Products</a></p>
      </div>
    </div>
  </div>
</div>








</div>

