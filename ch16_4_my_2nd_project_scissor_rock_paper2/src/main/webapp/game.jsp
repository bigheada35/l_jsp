<%@page import="edu.kosmo.ex.Score"%>
<%@page import="edu.kosmo.ex.ScissorRockPaper"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style>
        .container{
            /* width: 400pxx; */
            width: 100% 
            
            /* height: 400px; */
            /* background-color: skyblue; */ 
			/* border: 1px solid skyblue; */
			
            /* ---flex--- */
            display: flex;
            flex-direction:column ;
            /* align-items:  flex-start; */
			height: 100vh;
        }
/* 		.dbg1{
            background-color: gold;
            border: 1px solid gray
        }
        .dbg2{
            border: 1px solid red;
        }
        .dbg3{
            border: 1px solid gray
        }
        
        .dbg4{
            background-color: blue;
            border: 1px solid red;
        } 
        .dbg5{
            width: 100px;   
            //height: 100px;
            background-color: tomato;
            border: 1px solid gray;
        }  
        .dbg6{
            background-color: blue;
            border: 1px solid red;
        }   
        .dbg7{
            width: 100px;   
            height: 100px;
            background-color: tomato;
            border: 1px solid gray;
        }    
*/

        
        .h_title{
            /* height:100px; */
        }

        .i_wrap{
            /* height:300px; */

            display: flex;
            flex-direction:row ;
        }
        .i_person{
            /* ---player person--- */
/*             background-image: url("31.PNG");
            background-repeat: no-repeat;
            background-size: contain; */
            
        }
        .i_person_act{
/*             background-image: url("21.PNG");
            background-repeat: no-repeat;
            background-size: contain; */
        }
        .i_computer{
            /* ---player computer--- */
/*             background-image: url("41.PNG");
            background-repeat: no-repeat;
            background-size: contain;
 */        }
        .i_computer_act{
   /*          background-image: url("21.PNG");
            background-repeat: no-repeat;
            background-size: contain;
    */  
    		/* ---flex--- */
            /* flex-direction:row ; */
            /* align-items:  flex-end; */    
    	}

        .j_msg{
            /* height:100px; */
        }

        .k_wrap_p{
            /* ---flex--- */
            display: flex;
            flex-direction:row ;
            align-items:  flex-start; 
            margin: 4px;
       }

        .k1_wrap{
            /* height:100px; */

             /* ---flex--- */
            display: flex;
            flex-direction:row ;
            align-items:  flex-start; 
        }
        .k2_wrap{

        }
        .k3_wrap{
            /* height:100px; */

            /* ---flex--- */
            display: flex;
            flex-direction:row ;
            align-items:  flex-end; 
        }

		.k1_img:hover, .k2_img:hover, .k3_img:hover{
			border: 5px solid pink;
		}	
    </style>



</head>
<body>
	<%!ScissorRockPaper srp = null;
	
	String winner = "";
	String submit = "";
	String result = "";
	
	String player1PersonPng = "34U.PNG";//"31.PNG";
	String player2ComputerPng = "41U.PNG";//"41.PNG";
	String myPng = null;
	String computerPng = null;
	
	final String PNG_SCISSOR = "21.PNG";
	final String PNG_ROCK = "22.PNG";
	final String PNG_PAPER = "23.PNG";
	
	final String PNG_WIN = "31U.PNG";//"31.PNG";
	final String PNG_LOSE = "32U.PNG";//"32.PNG";
	final String PNG_TIE = "33U.PNG";//"33.PNG";
	
	final String PNG_COM_WIN = "41U.PNG";
	final String PNG_COM_LOSE = "42U.PNG";
	final String PNG_COM_TIE = "43U.PNG";
			
	final String STR_START="버턴을 누르세요!";
	final String STR_RETRY="한번더? 버턴을 누르세요!";
	
	boolean gameReady = true;
	
	Score sco = null;%>

	<%
	request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String personSelect = request.getParameter("var_btn");
		System.out.println("==personSelect==" + personSelect);
		
		if(personSelect == null){
			gameReady = true;
			System.out.println("11_");
			
	/* 		Cookie cookie = new Cookie("CookieN", "CookieV");
			cookie.setMaxAge(60*5);
			response.addCookie(cookie);
			*/
			sco = new Score("0", "0");
			
			Cookie ck1 = new Cookie("myScore", sco.getMyScore());
			Cookie ck2 = new Cookie("computerScore", sco.getComputerScore());
			Cookie ck3 = new Cookie("count", sco.getCount()); 
			ck1.setMaxAge(60*5);
			ck2.setMaxAge(60*5);
			ck3.setMaxAge(60*5);
			response.addCookie(ck1);
			response.addCookie(ck2);
			response.addCookie(ck3);
		}else{
			gameReady = false;
			System.out.println("12_");
		
			System.out.println("getCount: " + sco.getCount());
			System.out.println("getMyScore: " + sco.getMyScore());
			System.out.println("getComputerScore: " + sco.getComputerScore());
			
/* 		 	Cookie[] ckis = request.getCookies();
			for(int i=0; i<ckis.length ; i++){
				System.out.println("name: "+ ckis[i].getName() + ", ");
				System.out.println("value: " + ckis[i].getValue());
				System.out.println();
				
			} */
			
			
		}

		


		//submit = request.getParameter("submit");
		
		//System.out.println("--" + submit);
		
		

		

		if(!gameReady) {
			System.out.println("-2-");
			try {
				//String personSelect = request.getParameter("scissor_rock_paper");
				//System.out.println(personSelect);
				
				srp = new ScissorRockPaper(personSelect);
				winner = srp.getWinner();
				
				System.out.println("---"+srp.getMySelect());
				System.out.println("---"+srp.getComputerSelect());
		
			}catch(Exception e){
				e.printStackTrace();
			}finally{
		
			}
			
			if(srp.getMySelect().equals("가위")) {
				myPng = PNG_SCISSOR;
			}else if(srp.getMySelect().equals("바위")) {
				myPng = PNG_ROCK;
			}else {
				myPng = PNG_PAPER;
			}
			
			if(srp.getComputerSelect().equals("가위")) {
				computerPng = PNG_SCISSOR;
			}else if(srp.getComputerSelect().equals("바위")) {
				computerPng = PNG_ROCK;
			}else {
				computerPng = PNG_PAPER;
			}
			
			if(winner.equals("person")) {
				player1PersonPng = PNG_WIN;
				player2ComputerPng = PNG_COM_LOSE;
			}else if(winner.equals("computer")) {
				player1PersonPng = PNG_LOSE;
				player2ComputerPng = PNG_COM_WIN;
			}else {
				player1PersonPng = PNG_TIE;
				player2ComputerPng = PNG_COM_TIE;
			}
			
			if(winner.equals("person")) {
				result = "당신이 승리 하였습니다.";
				sco.incMyScore();
			}else if(winner.equals("computer")) {
				result = "패배 하였습니다.";
				sco.incComputerScore();
			}else {
				result = "비겼습니다.";
			}
			sco.incCount();
		}
	%>
	
	
    <div class="container my-5 mx-auto">
        <div class="text-center h_title dbg1 ">
                <h4 class="text-danger">가위 바위 보 게임 </h1>
                <!-- <h1 class="display-4">가위 바위 보 게임 </h1> -->
                <h1 class="text-primary"> <%=sco.getMyScore()%> vs <%=sco.getComputerScore()%></h1>
         </div>

        <div class=" i_wrap dbg1 dbg2 ">
            <div class="col-3 i_person dbg3">  
           		<img class="img-fluid" src=<%=player1PersonPng%> alt="">	
            </div>
            <div class="col-3  i_person_act  d-flex dbg3" >
                <%
                System.out.println("gameReady:" + gameReady);
                if(!gameReady){%>
            		<img class="img-fluid" src = <%=myPng%> alt="">	
            	<%}%> 
            </div>
            <div class="col-3 i_computer_act d-flex flex-row-reverse dbg3">
                <%if(!gameReady){%>
            		<img class="img-fluid" src = <%=computerPng%> alt="">	
            	<%}%> 
            </div>
            <div class="col-3  i_computer dbg3">
           		<img class="img-fluid" src=<%=player2ComputerPng%> alt="">	
            </div>
        </div>

        <div class=" j_msg dbg1 ">
        	<%if(!gameReady){%>
            	<h4 class="text-primary"><%=result%></h2>
            	<h4 class="text-danger"><%=STR_RETRY%></h4>
            <%}else{%>
            	<h4 class="text-danger"><%=STR_START%></h4>
            <%}%>	
        </div>

        <div class=" k_wrap_p dbg1"> 
            <div class="col-2 k1_wrap dbg5">
                <form action="#" method="post"> 
                	<button type="submit" name="var_btn" value="가위">	
                		<img class="img-fluid k1_img" src="21.PNG" alt="">	
                	</button>
                </form>
            </div>
            <div class="col-2 k2_wrap dbg7">
                <form action="#" method="post"> 
                	<button type="submit" name="var_btn" value="바위">	
                		<img class="img-fluid k2_img" src="22.PNG" alt="">	
                	</button>
                </form>
            </div>
            <div class="col-2 k3_wrap dbg7">
             	<form action="#" method="post"> 
                	<button type="submit" name="var_btn" value="보">	
                		<img class="img-fluid k3_img" src="23.PNG" alt="">	
                	</button>
                </form>
            </div>

        </div>
    </div>
    



</body>
</html>