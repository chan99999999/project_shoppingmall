<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="com.ezen.mall.web.common.EzenUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  String saveId = null;
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for(Cookie cookie : cookies){
      if(cookie.getName().equals("saveId")){
        saveId = EzenUtil.decryption(cookie.getValue());
      }
    }
  }
%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>chan999 포트폴리오 로그인</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&family=IBM+Plex+Sans+KR&family=Nanum+Gothic&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="/css/index.css">
  <c:url var="register_action" value="/member/register-action.jsp" />
</head>

<body>
<!-- 헤더 시작 -->
<jsp:include page="/module/header.jsp" />
<!-- 헤더 종료 -->

<div id="wrapper">
  <!-- 메인 시작 -->
  <main id="main" class="register-main">
    <!-- Nav 시작 -->
    <jsp:include page="/module/nav.jsp" />
    <!-- Nav 종료 -->

    <!-- 메인 시작 -->
    <div id="register-wrap">
          <h1 id="register-text">회원 가입</h1>
      <form id="register-form" name="register-form" method="post" action="${register_action}">
        <fieldset id="register-fieldset">
          <ul id="register-list">
            <li class="register-info">
              <label for="register-id">아이디</label>
              <input class="register-input" name="id" type="text" id="register-id" size="20" placeholder="아이디를 입력해주세요." minlength="2"
                     maxlength="10" autofocus required>
            </li>
            <li class="register-info">
              <label for="register-pw">비밀번호</label>
              <input class="register-input" name="passwd" type="password" id="register-pw" placeholder="비밀번호를 입력해주세요." required o>
            </li>
            <li class="register-info">
              <label for="register-pw-confirm">비밀번호 확인</label>
              <input class="register-input" type="password" id="register-pw-confirm" placeholder="비밀번호를 한번 더 입력해주세요." >
            </li>
            <li class="register-info">
              <label for="register-name">이름</label>
              <input class="register-input" name="name" type="text" id="register-name" size="20" autofocus required placeholder="이름">
            </li>
            <li class="register-info">
              <label for="register-email">이메일</label>
              <input class="register-input" name="email" type="email" id="register-email" placeholder="이메일">
            </li>
            <li class="register-info">
              <label for="register-picture">사진</label>
              <input name="picture" type="file" id="register-picture">
            </li>
          </ul>
        </fieldset>
        <button id="register-btn" type="submit">회원가입 하기</button>
      </form>
    </div>
  </main>
  <!-- 메인 종료 -->

  <!-- footer 시작 -->
  <jsp:include page="/module/footer.jsp" />
  <!-- footer 종료 -->
</div>
</body>

</html>