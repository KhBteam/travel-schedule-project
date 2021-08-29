<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            .faq_input {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .faq_1 {
                border:1px solid rgb(212, 212, 212);
                border-radius: 5px;
                width: 1000px;
            }
            .faq_2 {
                border:1px solid rgb(212, 212, 212);
                border-radius: 5px;
                width: 60%;
                margin-top: 10px;
            }
            .btn_review {
                color: white;
                font-weight: bold;
                font-size: 20px;
                background-color: rgba(255, 153, 051, 0.8);
                border-radius: 5px;
                width: 150px;
                height: 40px;
                margin-top: 2%;
            }
            .box_faq {
                display: grid;
                grid-template-columns: 25% 75%;
                margin: 1% 300px 0 0;
            }
            #catego {
                border:1px solid rgb(212, 212, 212);
                margin-left: 55%;
                border-radius: 5px;
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
                    <li><a href="/faqindex">문의페이지</a></li>
                    <li><a href="login.html" style="color: black; font-size: 1.15rem;">로그인</a></li>
                    <li><a href="sign_up.html" style="color: black; font-size: 1.15rem;">회원가입</a></li>
                </ul>
            </nav>
        </header>
        
        <div class=bgimg>
            <h1>문의 작성 페이지</h1>
        </div>
        <form>
            <div class="box_faq">
                <input type="text" class="faq_1" placeholder="제목을 입력해주세요." id="title">
            </div>
            <textarea cols="50" rows="10" class="faq_2" placeholder="문의하실 내용을 적어주세요." id="content"></textarea>
            <input type="button" id="btn-save" class="btn_review" value="등록하기">
        </form>
		<script src="/js/faq.js"></script>
    </body>
</html>
