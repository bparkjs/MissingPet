<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Missing pet</title>
<link href="css/shopping.css?afte" rel="stylesheet">
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
</head>

<body>
	<div id="wrap">
		<!--헤더파일 들어가는 곳 시작 -->
		<header>
			<!--로고 들어가는 곳 시작--->
			<div id="logo">
				<a href="MissingServlet?command=index"> <img
					src="images/logo.gif" width="180" height="100" alt="Missing pet">
				</a>
			</div>
			<!--로고 들어가는 곳 끝-->
			<nav id="catagory_menu">
				<ul>
					<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<li><a href="MissingServlet?command=login_form">로그인</a></li>
							<li>/</li>
							<li><a href="MissingServlet?command=contract">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li style="color: orange">
								${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</li>
							<li><a href="MissingServlet?command=logout">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
					<li>/</li>
					<li><a href="MissingServlet?command=cart_list">즐겨찾기</a></li>
					<li>/</li>
					<li>/</li>
					<li><a href="MissingServlet?command=pet_list">펫리스트</a></li>
					<li>/</li>
					<%--<li><a href="MissingServlet?command=mypage">MY PAGE</a></li>
					<li>/</li>
					<li><a href="MissingServlet?command=qna_list">Q&amp;A(1:1)</a>
					</li>--%>
				</ul>
			</nav>

			<nav id="top_menu">
				<ul>
					<li><a href="MissingServlet?command=catagory&kind=1">강아지</a>
					</li>
					<li><a href="MissingServlet?command=catagory&kind=2">고양이</a>
					</li>
					<%-- <li><a href="MissingServlet?command=catagory&kind=3">Sandals</a>
					</li>
					<li><a href="MissingServlet?command=catagory&kind=4">Sneakers</a>
					</li>
					<li><a href="MissingServlet?command=catagory&kind=5">On
							Sale</a></li>--%>
				</ul>
			</nav>
			<div class="clear"></div>
			<hr>
		</header>
		</div>
		<!--헤더파일 들어가는 곳 끝 -->