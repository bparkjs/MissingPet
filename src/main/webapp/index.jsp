<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!--메인 이미지 들어가는 곳 시작 --->
<%@ include file="../map.jsp"%>
<!--메인 이미지 들어가는 곳 끝--->

<div class="clear"></div>

<div id="front">
	<h2>New</h2>
	<div id="bestPet">
		<c:forEach items="${newPetList }" var="PetVO">
			<div id="item">
				<a
					href="MissingServlet?command=Pet_detail&pseq=${PetVO.pseq}">
					<img src="Pet_images/${PetVO.image}" />
					<h3>${PetVO.title}</h3>
					<p>${PetVO.price}</p>
				</a>
			</div>
		</c:forEach>
	</div>
	<div class="clear"></div>

	<h2>Most</h2>
	<div id="bestPet">
		<c:forEach items="${bestPetList}" var="PetVO">
			<div id="item">
				<a
					href="MissingServlet?command=Pet_detail&pseq=${PetVO.pseq}">
					<img src="Pet_images/${PetVO.image}" />
					<h3>${PetVO.title}</h3>
					<p>${PetVO.price}</p>
				</a>
			</div>
		</c:forEach>
	</div>
	<div class="clear"></div>
</div>

<%@ include file="../footer.jsp"%>
