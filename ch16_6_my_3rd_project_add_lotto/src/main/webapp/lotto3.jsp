<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="edu.kosmo.ex.lotto.Lotto"%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

    <!-- 
    이것을 꼭 넣어야 한다. 
    지시자 테그라이브러리를 쓰겠다.
    c라는 프레픽스
    문법은 여기에 있따.
     -->
<%-- 주의  주의  <% 는 왼쪽에 꼭 붙여서 쓰기 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style>
    	.i_wrap div, .j_wrap div, .k_wrap div{
    		border:1px solid gray;
    	}
    	
    	
/*     	
        .di_dbg{
            border:1px solid gray;
        }
        .di_dbg2{
            border:1px solid rgb(14, 247, 84);
        }
        .di_dbg3{
            background-color: rgb(209, 229, 188);
        }
        
        */   
        .di{
            position: relative;
            margin: 5px;
        }
        .centered {
            position: absolute;
            top: 0;
            left: 0;
            text-align: center;
            width: 100%;
            font-size: 30px;
            font-weight: 500;
            //color: blueviolet;
            color: black;
        }	
    	
    	
    	
    	
    </style>
    
</head>
<body>
	
	
	   <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="game.jsp">가위바위보</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
      
 
	<main role="main">
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">로또 6/45 번호 생성기 소개</h1>
				<p>온라인복권이란 </p>
				<p>복권 발행시스템을 갖춘 중앙전산센터와 정보통신망으로 연결된 단말기를 통해 복권의 발행 및 판매가 이루어지는 복권으로 인터넷복권과는 다른 개념입니다.</p>
				
			<div class="row">	
				<div class="col-3">
					<table class="table table-bordered table-hover text-center">
			
			            <thead class="table-primary ">
			                 <tr>
			                    <td>번호</td>
			                    <td>색깔</td>
			                </tr>
			            </thead> 
			            <tbody class="table-success  ">
								<tr>
									<td >	1 ~ 9	</td>
									<td >	<img src="img-ball\\0.png" alt="" style="width:40%;">	</td>
								</tr>
								<tr>
									<td >	10 ~ 19	</td>
									<td>	<img src="img-ball\\1.png" alt="" style="width:40%;">	</td>
								</tr>
								<tr>
									<td >	20 ~ 21	</td>
									<td>	<img src="img-ball\\2.png" alt="" style="width:40%;">	</td>
								</tr>
								<tr>
									<td >	31 ~ 39	</td>
									<td>	<img src="img-ball\\3.png" alt="" style="width:40%;">	</td>
								</tr>
								<tr>
									<td >	40 ~ 45	</td>
									<td>	<img src="img-ball\\4.png" alt="" style="width:40%;">	</td>
								</tr>										
						</tbody>
			
			        </table> 	
				</div>	      
		
	
				<div class="col-9">
					

							<form class="d-flex justify-content-center my-2 my-lg-0" action="#" method="post">
			           			<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="genLotto" value="true">로또 번호 생성</button>
			          		</form>

						<%
						String genLotto = request.getParameter("genLotto");
						System.out.println("++++" + genLotto);
						Lotto lo = null;
						if(genLotto != null){		
							if(genLotto.equals("true")){
								System.out.println("++++2");
								
								lo = new Lotto();
								//Set<Integer> lotto = lo.getSet();
								
								ArrayList<Integer> arr = lo.getArr();
								ArrayList<String> imgBalls = lo.getArrBall();
								
								pageContext.setAttribute("lotto2", arr);
								pageContext.setAttribute("imgs", imgBalls);

						
								//다시 lo = new Lotto()해서 그런지, ArrWinningNum 사라져 잇으므로.
								ArrayList<Integer> arrWinningNum = (ArrayList<Integer>)session.getAttribute("lottoWinningNum");
								for(int num : arrWinningNum){
									System.out.print(num + "+");
								}
								lo.setArrWinnigNum(arrWinningNum); 
								
								
								ArrayList<Integer> arrHit = lo.getArrHit();
								ArrayList<String> imgBallsHit = lo.getArrBallHit();	
								
								pageContext.setAttribute("lotto2Hit", arrHit);
								pageContext.setAttribute("imgsHit", imgBallsHit);										
								
							}
						}else{
							System.out.println("++++1");
							lo = new Lotto();
							
							ArrayList<Integer> arrWinningNum = lo.getArrWinnigNum();
							ArrayList<String> imgBallsWinnigNum = lo.getArrBallWinnigNum();
							session.setAttribute("lottoWinningNum", arrWinningNum);
							session.setAttribute("imgsWinnigNum", imgBallsWinnigNum);
						}
						
						String resultLotto = request.getParameter("lottoResult");
						if(resultLotto != null){
							if(resultLotto.equals("1")){
								System.out.println(",,r-1");
							}else if(resultLotto.equals("2")){
								System.out.println(",,r-2");
							}else if(resultLotto.equals("3")){
								System.out.println(",,r-3");
							}
							
						}
						%>
		
					    <div class="container di_dbg3">
					        <div class="row justify-content-sm-center">
					        
					        	<c:forEach var="i" items="${lotto2}" begin="0" end="5" varStatus="status">
								            <div class="di di_dbg">
								                <img src=${imgs[status.index]} alt="" style="width:100%;">
								                <div class="centered di_dbg2">${i}</div>
								            </div>
					        	</c:forEach>
					        	    
					        </div>
					    </div>	
					    

						<br>
						<br>
						
						<div class="d-flex justify-content-center my-2 my-sm-0" >
	           				<button class="btn btn-outline-success disabled" >맞은 번호</button>
						</div>	           				
	          			
					    <div class="container di_dbg3">
					        <div class="row justify-content-sm-center">
					        
					        	<c:forEach var="i" items="${lotto2Hit}" begin="0" end="5" varStatus="status">
								            <div class="di di_dbg">
								                <img src=${imgsHit[status.index]} alt="" style="width:100%;">
								                <div class="centered di_dbg2">${i}</div>
								            </div>
					        	</c:forEach>
					        	    
					        </div>
					    </div>

					    
						
						<br>
						<br>
							<!-- ------------ 회차 결과 선택 ---동작이 않됨. <a에 type=submit은 못사용하는 것인가???-------- -->
<!-- 							
							
						    <div class="dropdown">
						        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						            Dropdown button
						        </button>
						
						        <div class="dropdown-menu">
						            	<form action="#" method="post">
						            		<a type="submit" name="lottoResult" value="2" class="dropdown-item" href="#" > Link 2</a>
						            	</form>
						            
						            <a class="dropdown-item" href="#" type="submit" name="lottoResult" value="2"> Link 2</a>
						            <a class="dropdown-item" href="#" type="submit" name="lottoResult" value="3"> Link 3</a>
						        </div>
						    </div>
						    
						
						
 -->
 
						<div class="d-flex justify-content-center my-2 my-sm-0" >
	           				<button class="btn btn-outline-success disabled" >금주 로또 당첨 번호</button>
						</div>	           				
	          			
					    <div class="container di_dbg3">
					        <div class="row justify-content-sm-center">
					        
					        	<c:forEach var="i" items="${lottoWinningNum}" begin="0" end="5" varStatus="status">
								            <div class="di di_dbg">
								                <img src=${imgsWinnigNum[status.index]} alt="" style="width:100%;">
								                <div class="centered di_dbg2">${i}</div>
								            </div>
					        	</c:forEach>
					        	    
					        </div>
					    </div>
					    
					    
					    
					    
					    
				</div>
			</div>

				
			</div>
		</div>
	</main>
    
    

    
    
    <hr>
      
	<footer class="container">
		<p>&copy; Company 2020-2021</p>
	</footer>
		
</body>
</html>