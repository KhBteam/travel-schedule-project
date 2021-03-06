<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<meta name="description" content="서로의 여행 정보를 공유하는 사이트">
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.box-two {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.gap-box {
	background: #fff;
	height: 5px;
}

.boxes {
	display: flex;
	flex-direction: row;
	margin-left: 0%;
}

.boxid {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.boxpasswd {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.password_check {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.name {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.email {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.birthday {
	width: 600px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(204, 204, 204, .3);
}

.btn_sign_up {
	width: 280px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(255, 153, 051, 0.8);
}

.btn {
	display: grid;
	grid-template-columns: 50% 50%;
}

.btn_cancel {
	width: 200px;
	border: 1px solid white;
	border-radius: 5px;
	background-color: rgba(255, 153, 051, 0.8);
}

input {
	font-size: 20px;
	width: 325px;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
}
</style>
</head>
<body>
	<header class="page-header wrapper">
		<a href="index.html"><img class="logo" src="category/images/logo2.png" alt="로고"></a>
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

			<div class="temp-box box-two">
				<div class="sign_up">
					<h2>회원정보 수정</h2>
				</div>
				<div class="gap-box"></div>
				<div style="margin-left: -505px; margin-bottom: 5px;">아이디</div>
				<div class="boxes">
					<div class="boxid">
						<input type="text" name="ID" placeholder="ID" value="${userid}" disabled>
					</div>
				</div>
				<div class="gap-box"></div>
				<label for="passwd" style="margin-left: -490px; margin-bottom: 5px">비밀번호</label>
				<div class="boxpasswd">
					<input type="password" name="passwd" id="pw-modify" placeholder="비밀번호(8자리 이상)">
				</div>
				<div class="gap-box"></div>
				<label for="passwd_check" style="margin-left: -450px; margin-bottom: 5px">비밀번호 확인</label>
				<div class="password_check">
					<input type="password" name="passwd_check" placeholder="비밀번호를 다시 입력해주세요.">
				</div>
				<div class="gap-box"></div>
				<label for="name" style="margin-left: -520px; margin-bottom: 5px">이름</label>
				<div class="name">
					<input type="text" name="name" value="${name}" disabled>
				</div>
				<input type="hidden" id="id" value="${id}"> ,${name}
				<div class="gap-box"></div>
				<label for="email" style="margin-left: -470px; margin-bottom: 5px">이메일 주소</label>
				<div class="email">
					<input type="email" name="email" id="modify-email" value="${email}" placeholder="이메일 주소를 입력해주세요.">
				</div>
				<div class="gap-box"></div>
				<label for="party" style="margin-left: -490px; margin-bottom: 5px">생년월일</label>
				<div class="birthday">
					<input type="date" name="party" min="1980-01-01" max="2021-08-31" value="${birth}" disabled>
				</div>
				<div class="gap-box"></div>

			</div>

		<div class="btn">
			<div class="btn_sign_up" style="margin: 20px 20px 0 0; padding-right: 20em; color: #fff">
			
				<input type="button" id="userinfo-modify-btn" value="회원정보 수정">
			</div>
			<div class="btn_cancel" style="margin: 20px 0 0 20px; padding-right: 20em; color: #fff">
				<input type="button" id="userdrop" value="탈퇴">
			</div>
		</div>
		</div>
		<!-- main-container-->
	</main>

</body>



<script type="text/javascript" src="/js/user.js"></script>