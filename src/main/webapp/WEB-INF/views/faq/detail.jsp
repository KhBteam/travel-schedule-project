<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Main</title>
<meta name="description" content="서로의 여행 정보를 공유하는 사이트">
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
hr {
	border: 0.5px solid rgba(200, 200, 200, .4);
	margin: 5px 0 0 2%;
}

::placeholder {
	font-weight: bold;
}
</style>
</head>

<body>
	<header class="page-header wrapper">
		<a href="index.html"><img class="logo"
			src="/category/images/logo2.png" alt="로고"></a>
		<nav>
			<ul class="main-nav">
				<li><a href="review.html">후기페이지</a></li>
				<li><a href="detail.html">상세페이지</a></li>
				<li><a href="sign_up_update.html">회원정보페이지</a></li>
				<li><a href="faq.html">문의페이지</a></li>
				<li><a href="login.html"
					style="color: black; font-size: 1.15rem;">로그인</a></li>
				<li><a href="sign_up.html"
					style="color: black; font-size: 1.15rem;">회원가입</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<div class="main_container">
			<div class="box_one">
				<div class="box_two">
					<div class="deep">
						<div class="or">
							<input type="text" placeholder="${faq.title}" disabled>
						</div>
					</div>
					<div class="deep">
						<input type="text" placeholder="작성자 : ${faq.user.username}"
							disabled> <input type="text"
							placeholder="작성일 : ${faq.createDate}" disabled>
					</div>
				</div>
				<div>
					<a href="/faq"><input type="button" class="btn" value="목록"></a>
					<a href="/faq/${faq.id}/updateForm"> <input type="button"
						class="btn" value="수정"></a> <input type="hidden" id="id"
						value="${faq.id}" /> <input type="button" id="btn-delete"
						class="btn" value="삭제">
				</div>
			</div>
			<hr width="96%">
			<div class="box2">
				<textarea cols="50" rows="10" disabled>${faq.content}</textarea>
			</div>

			<hr width="96%">
			<div class="card">
				<div class="card-header">댓글 리스트</div>
				<ul id="reply-box" class="list-group">
					<c:forEach var="reply" items="${faq.replys}">
						<li id="reply-${reply.id}"
							class="list-group-item d-flex justify-content-between">
							<div>${reply.content}</div>
							<div class="d-flex">
								<div class="font-italic">작성자 : ${reply.user.username}
									&nbsp;</div>
								<button onClick="index.replyDelete(${faq.id}, ${reply.id})"
									class="badge">삭제</button>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<form>
			<div class="box4">
				<textarea cols="50" rows="10" placeholder="답변을 작성해 주세요."
					id="reply-content"></textarea>
			</div>
			<div class="btn_ans">
				<input type="hidden" id="faqId" value="${faq.id}" /> <input
					type="button" id="btn-reply-save" value="답변 작성하기">
			</div>
		</form>
		<script src="/js/faq.js"></script>
	</main>
</body>
</html>