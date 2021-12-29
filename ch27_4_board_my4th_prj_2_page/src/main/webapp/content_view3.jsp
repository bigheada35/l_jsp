<%@page import="edu.kosmo.ex.dto.BDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.kosmo.ex.dao.BDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%-- 주의  주의  <% 는 왼쪽에 꼭 붙여서 쓰기 --%>
 <!-- 주의  이것 넣고, lib도 넣어야 함. 꼭 --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
  	<style type="text/css">
 		input, textarea {
  			//background-color: #7fffd4;
  			//color: white;
		}
  	</style>
  
</head>
<body>
	
<!-- ============================== -->
	   <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="gamelotto.jsp">로또 </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="gamesrp.jsp">가위바위보 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Disabled</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
      

<!-- ------------------------------ -->
	<main role="main">
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
<!--			
				<h1 class="display-3">게시판 소개</h1>
				<p>전자 게시판 이란 </p>
				<p>전자 게시판(電子揭示板, bulletin board system, BBS, 또는 computer Bulletin Board Service, CBBS[1])은 일반적으로 대학의 게시판 또는 중세 도시의 지역 사회 광고판을 컴퓨터 네트워크에 적용한 시스템으로, 보통 특정 전자게시판 소프트웨어를 가동하는 컴퓨터 시스템을 말한다.</p>
-->
			
<!-- ------------------------------ -->


<!-- ++++++++++++++++++++++++++++++ -->	
				<table class="table table-striped table-hover table-warning">
					<thead>
						<tr>
							<td>번호</td>
							<td>이름</td>
							<td>제목</td>
							<td>날짜</td>
							<td>히트</td>
						</tr>
					</thead>	
					<tbody>
						<!-- 여기 또 핵심 3 -->
						<c:forEach var="dto" items="${list}">
							<tr>
						
									<%-- <td>${dto.bid}</td> --%>
									<th scope="row">${dto.bid}</th>
									<td>${dto.bname}</td>
									<td>
										<%-- <c:forEach begin="1" end="${dto.bindent}"> [Re] </c:forEach> --%>
											<c:forEach begin="1" var="idx" end="${dto.bindent}">
												<c:if test="${idx eq dto.bindent}"> 
													&#8627;
												</c:if>
												<c:if test="${idx ne dto.bindent}">
													 &nbsp;&nbsp;&nbsp;&nbsp;
												</c:if>
											</c:forEach>
										
					 						<a href="content_view3.do?bid=${dto.bid}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&searchItem=${pageMaker.cri.searchItem}&searchWord=${pageMaker.cri.searchWord}">${dto.btitle}</a>
									</td>
								
								
									<td>${dto.bdate}</td>
									<td>${dto.bhit}</td>
							
							</tr>
							
							<!-- ++++++++++++++++++++++++++++++ -->	
							<!-- lis안의 bid와 content_view안의 bid가 같으면  tr을 하나 만들어서 내용을 뿌려 주도록 시도 -->
							<c:if test="${dto.bid eq content_view.bid}">
										<form action="modify_or_reply3.do" method="post">
											<!-- 이것들을 form submit해야 modify.do에서 bid를 가지고 수정을 한다. -->
											<input type="hidden" name="bid" value="${content_view.bid}">
											<input type="hidden" name="bgroup" value="${content_view.bgroup}">
											<input type="hidden" name="bstep" value="${content_view.bstep}">
											<input type="hidden" name="bindent" value="${content_view.bindent}">
											<tr>
												<td colspan="10" bgcolor="#7fffd4">
													이름&nbsp;<input type="text" name="bname" value="${content_view.bname}">
													제목&nbsp;<input type="text" name="btitle" value="${content_view.btitle}" size="55">
													<textarea cols="120" rows="4" name="bcontent" >${content_view.bcontent}</textarea>
												</td>
											</tr>

											<tr>
												<td colspan="5" bgcolor="#7fffd4">
													
													<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
													<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
												
													<input type="submit" name="action" value="수정"> &nbsp;&nbsp; 
													<a href="list3.do?pageNum=1&amount=10">목록보기</a> &nbsp;&nbsp; 
													<a href="delete3.do?bid=${content_view.bid}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}">삭제</a> &nbsp;&nbsp; 
													<input type="submit" name="action" value="답변"> &nbsp;&nbsp;
												</td>
											</tr>	
										</form>
										
							</c:if>					
							<!-- ++++++++++++++++++++++++++++++ -->	
							
						</c:forEach>

					</tbody>
				</table>

			<!-- ------------page------------------ -->

				<c:if test="${pageMaker.pre}">
					<a href="list3.do${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
				</c:if>

				<!-- 링크를 걸어준다 1-10페이지까지 페이지를 만들어주는것  -->
				<c:forEach var="idx" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }">
					
					<c:if test="${idx eq pageMaker.cri.pageNum}">&nbsp[</c:if>	
					<a href="list3.do${pageMaker.makeQuery(idx)}">${idx}</a>
					<c:if test="${idx eq pageMaker.cri.pageNum}">]&nbsp</c:if>
					
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<a href="list3.do${pageMaker.makeQuery(pageMaker.endPage +1) }"> »
					</a>
				</c:if>
				<br>	
					
<!-- ++++++++++++++++++++++++++++++ -->				
<!-- ------------------------------ -->		
			</div>
		</div>
	</main>		
	
	<hr>
	<footer class="container">
		<p>&copy; Company 2020-2021</p>
	</footer>
<!-- ------------------------------ -->
<!-- ============================== -->		
		
</body>
</html>