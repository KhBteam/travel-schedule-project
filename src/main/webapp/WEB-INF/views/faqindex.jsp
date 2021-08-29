<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>Main</title>
        <meta name="description" content="서로의 여행 정보를 공유하는 사이트">
        <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
        <link rel="stylesheet" href="/css/style.css">
        <style>
            .bgimg {
                background: url(/images/bali.png);
                background-size: cover;
                height: 40vh;
                overflow:hidden;
            }
            h1 {
                text-align: center;
                color: white;
                margin-top: 8%;
                font-size:60px;
            }
        </style>
    </head>

    <body>
        <header class="page-header wrapper">
            <a href="index.html"><img class="logo" src="/category/images/logo2.png" alt="로고"></a>
            <nav>
                <ul class="main-nav">
                    <li><a href="review.html">후기페이지</a></li>
                    <li><a href="detail.html">상세페이지</a></li>
                    <li><a href="sign_up_update.html">회원정보페이지</a></li>
                    <li><a href="faqindex">문의페이지</a></li>
                    <li><a href="login.html" style="color: black; font-size: 1.15rem;">로그인</a></li>
                    <li><a href="sign_up.html" style="color: black; font-size: 1.15rem;">회원가입</a></li>
                </ul>
            </nav>
        </header>

        <div class=bgimg>
            <h1>문의 페이지</h1>
        </div>
        
        <main>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="board_list_head">
                        <div class="num">번호</div>
                        <div class="tit">제목</div>
                        <div class="writer">글쓴이</div>
                        <div class="date">작성일</div>
                    </div>
                    <div class="board_list_body">
					<c:forEach var="faq" items="${faqs.content}">
						<div class="item">
							<div class="num">${faq.id}</div>
							<div class="tit"><a href="/faq/${faq.id}">${faq.title}</a></div>
							<div class="writer">${faq.user.username}</div>
							<div class="date"><fmt:formatDate pattern = "yyyy/MM/dd hh:mm" value="${faq.createDate}"/></div>
						</div>
					</c:forEach>
				</div>
                </div>
                <div class="paging">
                    <a class="bt prve" href="?page=${faqs.number-1}">이전 페이지</a>
                    <a class="bt next" href="?page=${faqs.number+1}">다음 페이지</a>
                </div>
            </div>
            <div class="faq_grid">
                <form method="get" class="search_box">
                </form>
                <input type="button" class="btn_faqwrite" value="작성하기" onclick="location.href='/faq/saveForm'">
            </div>
        </main>
    </body>
</html>