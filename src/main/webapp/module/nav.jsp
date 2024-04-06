<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navi">
  <div class="nav-wrap">
    <div class="nav-logo">
      <a href="/"><img src="/img/logo.png"></a>
    </div>
    <div class="nav-list">
      <ul>
        <li class="nav-list-text">
          <a href="/product/best-product.jsp">베스트</a>
        </li>
        <li class="nav-list-text">
          <a href="/product/new-product.jsp">신메뉴</a>
        </li>
        <li class="nav-list-text">
          <a style="color: red" href="/product/hotdeal-product.jsp">핫딜</a>
        </li>
        <li class="nav-list-text">
          <a href="/review/review.jsp">리뷰</a>
        </li>
        <li class="nav-list-text">
          <a href="/board/list.jsp">밀리소식</a>
        </li>
      </ul>
    </div>
    <div class="nav-cart">
      <a href="/cart/cart.jsp"><img src="/img/cart-img.png"></a>
    </div>
  </div>

  <c:choose>
    <c:when test="${pageContext.request.requestURI.equals('/') || pageContext.request.requestURI.equals('/index.jsp')}">
      <div class="nav-banner-wrap">
        <a href=""><div class="nav-banner-main"><video src="/video/banner-main.mp4" loop autoplay muted ></video></div></a>
      </div>
    </c:when>
    <c:otherwise>
      <div class="nav-banner-wrap">
        <a href=""><div class="nav-banner"></div></a>
      </div>
    </c:otherwise>
  </c:choose>
</div>