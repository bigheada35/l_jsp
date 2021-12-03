<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
				<h1 class="display-3">Hello, world!</h1>
				<p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
				
				
				<form class="d-flex justify-content-center my-2 my-lg-0" action="#" method="post">
           			<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="genLotto" value="true">Search</button>
          		</form>
  		
				<%
				String genLotto = request.getParameter("genLotto");
				System.out.println("++++" + genLotto);
				if(genLotto != null){		
					if(genLotto.equals("true")){
						System.out.println("++++2");
					}
				}
				%>
	
			    <div class="h_wrap">
			    	<div class="d-flex text-center i_wrap">
			    		<div class="col-4">i1</div>
			    		<div class="col-4">i2</div>
			    		<div class="col-4">i3</div>
			    	</div>
			    	<div class="d-flex j_wrap">
			    		<div class="col-1"> j1</div>
			    		<div class="col-1"> j2</div>
			    		<div class="col-1"> j3</div>
			    		<div class="col-1"> j4</div>
			    		<div class="col-1"> j5</div>
			    		<div class="col-1"> j6</div>
			    		<div class="col-1"> j7</div>
			    		<div class="col-1"> j8</div>
			    		<div class="col-1"> j9</div>
			    		<div class="col-1"> j10</div>
			    		<div class="col-1"> j11</div>
			    		<div class="col-1"> j12</div>
			    	</div>
			    	<div class="d-flex k_wrap">
			    		<div class="col-8 text-center">k1</div>
			    		<div class="col-4 text-center">k2</div>
			    	</div>
		    	</div>
						
				
				
				
			</div>
		</div>
	</main>
    
    

    
    
    <hr>
      
	<footer class="container">
		<p>&copy; Company 2017-2020</p>
	</footer>
		
</body>
</html>