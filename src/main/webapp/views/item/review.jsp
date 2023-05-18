<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--review div--%>
<div class="review">
  <div class="user-img" style="background-image: url(/static/images/1.jpg)"></div>
  <div class="desc">
    <h4>
      <span class="text-left">Jacob Webb</span>
      <span class="text-right">14 March 2018</span>
    </h4>
    <p class="star">
      <span>
          <i class="icon-star-full"></i>
          <i class="icon-star-full"></i>
          <i class="icon-star-full"></i>
          <i class="icon-star-half"></i>
          <i class="icon-star-empty"></i>
      </span>
      <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
    </p>
    <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
  </div>
</div>
<%--submit form--%>
<div class="review">
    <div class="contact-wrap">
        <h3>Rest Review</h3>
        <form action="/reviewimpl" method="post" class="contact-form">
            <input type="hidden"name="id" value="${gitem.id}"/>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="fname">Name</label>
                        <input type="text" name="name" id="fname" class="form-control" placeholder="Your name">
                    </div>
                </div>
                <div class="w-100"></div>
                <div class="w-100"></div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea name="text" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
                    </div>
                </div>
                <div class="w-100"></div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <input type="submit" value="Send Message" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>