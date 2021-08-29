<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
            hr {
                border: 0.5px solid rgba(200, 200, 200,.4);
                margin:5px 0 0 2%;
            }
            ::placeholder { font-weight: bold;}
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
                    <li><a href="faq.html">문의페이지</a></li>
                    <li><a href="login.html" style="color: black; font-size: 1.15rem;">로그인</a></li>
                    <li><a href="sign_up.html" style="color: black; font-size: 1.15rem;">회원가입</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <form method="get" class="main_container">
                <div class="box_one">
                    <div class="box_two">
                        <div class="deep">
                            <div class="or">
                                <input value="${faq.title}" type="text" placeholder="Enter title" id="title">
                            </div>
                        </div>
                        <div class="deep">
                            <input type="text" placeholder="작성자 : ${faq.user.username}" disabled>
                        </div>
                    </div>
                </div>
                <hr width="96%">
                <div class="box2">
                    <textarea cols="50" rows="10" id="content">${faq.content}</textarea>
                </div>
            </form>
            	<div class="btn_ans">
            		<input type="hidden" id="id" value="${faq.id}"/>
                    <input type="button" id="btn-update" value="글수정완료">
                </div>
		<script src="/js/faq.js"></script>
        </main>
    </body>
</html>

