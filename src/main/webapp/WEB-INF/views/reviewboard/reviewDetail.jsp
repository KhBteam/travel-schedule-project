<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
        <link rel="stylesheet" href="/css/style.css">
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
            <a href="/"><img class="logo" src="/category/images/logo2.png" alt="로고"></a>
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
                                <input type="text" value="${board.title}" disabled>
                            </div>
                        </div>
                        <div class="deep">
                            작성자 : <span><i>${board.user.username} </i></span>
                            
                            작성일 : <div class="date"><fmt:formatDate pattern = "yyyy/MM/dd hh:mm" value="${board.createDate}"/></div>
                        </div>
                    </div>
                    <div>
                        <a href="/board/${board.id}/updateForm"><input type="button" class="btn" value="수정"></a>
                        <input type="hidden" id="id" value="${board.id}"/>
                        <input type="button" id="btn-delete" class="btn" value="삭제">
                    </div>
                </div>
                <hr style="margin-top: 2%;" width="96%">
                <div class="box2">
                    <textarea cols="50" rows="20">${board.content}</textarea>
                </div>
                <hr width="96%">
                <div class="btn_ans">
                    <input type="button" value="목록으로 가기" onclick="history.back()">
                </div>
            </form>
        </main>
        <script src="/js/board.js"></script>
    </body>
</html>