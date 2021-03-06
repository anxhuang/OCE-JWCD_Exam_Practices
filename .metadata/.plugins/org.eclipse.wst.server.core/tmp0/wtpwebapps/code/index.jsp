<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style>
	body{
		font-size: 0.25in;
		font-family: Arial;
		background: linear-gradient(#369, #111);		
		background-attachment: fixed;
	}
	h1{
		color: #FFF;
		text-shadow: 0px 1px 5px #000;
		text-align: center;
	}
	h2{
		color: #F80;
		text-shadow: 0px 1px 5px #000;
		text-align: center;
	}
	red{
		color: #E40;
		font-weight: bold;
	}
	.orange{
		color: #FFF;
		font-size: 0.6in;		
		text-align: center;
		background: #F80;
		font-weight: bold;
	}
	.date{
		width: 0.5in;		
		color: #396;
		font-size: 0.4in;
		text-align: center;		
	}
	.ex{
		padding-left: 0.3in;
		margin-left: 0.2in;
		border-left: 2px solid #CCC;		
	}
	grey{
		color: #777;
	}
	table{		
		width: 80%;
		margin: 0 auto;
		border-spacing: 0.15in;
	}
	td{
		color: #000;
		text-shadow: 0px 1px 2px #777;
		line-height: 0.4in;
		padding: 0.2in;		
		background: rgba(255,255,255,1.0);		
		box-shadow: 0px 2px 10px #000;
		border-radius: 3px;
		vertical-align: middle;
	}
	td div{
		display: inline-block;
		vertical-align: middle;
	}
	td:first-child{
		width: 8%;
	}
	td:nth-child(2){
		width: 46%;
	}
	td:nth-child(3){
		width: 46%;
	}
	a:link		{color: #47F;}
	a:visited	{color: #47F;}
</style>
</head>
<body>
	
	<h1>Java Web Code</h1><h2>2018.07.12 ~ 2018.09.04</h2>
	
	<table>
		<tbody>
			<tr>
				<td class="orange">T</td>
				<td colspan="2">
					<%@ page import="java.util.ArrayList" %>
					
					<%
					String topics[][]={
						{"1","Servlet*, JSP*"},
						{"2","ServletContext, Filter, Expression Language(EL)"},
						{"3","Request, Response, Annotation, JSTL"},
						{"4","RequestDispatcher, JavaBean"},
						{"5","Session, Cookie, Tomcat, TLD"},
						{"6","Asynchronous Request, TLD"},
						{"7","Listener"},
						{"8","Deployment, Security"},
						{"0","Database"},
					};
					for (String[] topic:topics){
						out.print("<red>"+topic[0]+"</red>&nbsp;&nbsp;"+topic[1]+"<br>");
					}					
					%>					
				</td>
			</tr>
			
				<%
					ArrayList<String>	date=new ArrayList<>();
					ArrayList<String>	ex=new ArrayList<>();
					date.add("");
					date.add("7<br><grey>14</grey>");
					date.add("7<br><grey>17</grey>");
					date.add("7<br><grey>19</grey>");
					date.add("7<br><grey>24</grey>");
					date.add("7<br><grey>26</grey>");
					date.add("7<br><grey>31</grey>");
					date.add("8<br><grey>2</grey>");
					date.add("8<br><grey>7</grey>");
					date.add("8<br><grey>9</grey>");
					date.add("8<br><grey>14</grey>");
					date.add("8<br><grey>16</grey>");
					date.add("8<br><grey>21</grey>");
					date.add("8<br><grey>23</grey>");
					date.add("8<br><grey>28</grey>");
					date.add("8<br><grey>30</grey>");
					date.add("9<br><grey>4</grey>");
					date.add("");
					ex.add("<grey>- Course Start -</grey>");
					ex.add("Servlet: <a href='S121'>S121</a><br>JSP: <a href='j121.jsp'>j121</a>,<a href='j122.jsp'>j122</a>");
					ex.add("<font color=#F40'>No trigger, Listener/Filter(F211)</font><br>Servlet: <a href='S211'>S211</a>,<a href='S212'>S212</a><br>EL: <a href='j211.jsp'>j211</a>,<a href='j212.jsp'>j212</a><br>JSP: <a href='j213.jsp'>j213</a>");
					ex.add("Servlet: <a href='S221'>S221</a>,S222,S223<br>JSP: <a href='j221.jsp'>j221</a>,<a href='j222.jsp'>j222</a><br>EL: <a href='j223.jsp'>j223</a>");
					ex.add("<font color='#F40'>No trigger, Listener/Filter(L311,L312)</font><br>Servlet: <a href='S311'>S311</a><br>JSP/JSTL: <a href='j311.jsp'>j311</a>,<a href='j312.jsp'>j312</a><br>EL: j313");
					ex.add("<font color='#F40'>No trigger, Listener/Filter(L321)</font><br>Servlet/Database: <a href='S321'>S321</a>,S322<br>JSP/Database: <a href='j321.jsp'>j321</a><br>EL: <a href='j322.jsp'>j322</a><br>JSP/JSTL: <a href='j323.jsp'>j323</a>");
					ex.add("<font color='#F40'>No trigger, Listener/Filter(L411)</font><br>Servlet: <a href='S411'>S411</a>,<a href='S412'>S412</a><br>JSP/JSTL/Database: <a href='j411.jsp'>j411</a><br>JSP/JavaBean: <a href='j412.jsp'>j412</a>,j413(Fruit)");
					ex.add("<font color='#F40'>No trigger, Listener/Filter()</font><br>JSP: <a href='j421.jsp'>j421</a>(S421),<a href='j422.jsp'>j422</a>(web.xml),<a href='j423.jsp'>j423</a>(Session)<br>JSP/JavaBean: <a href='j424.jsp'>j424</a>(Meat)");
					ex.add("JSP/JavaBean/Database: <a href='j414.jsp'>j414</a>(Cost)");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("");
					ex.add("<grey>- Course End -</grey>");					
					for (int i=1; i<=9; i++){						
						out.print("<tr><td class='orange'>"+i+"</td><td><div class='date'>"+date.get(i*2-2)+"</div><div class='ex'>"+ex.get(i*2-2)+"</div></td><td><div class='date'>"+date.get(i*2-1)+"</div><div class='ex'>"+ex.get(i*2-1)+"</div></td></tr>");
					}
				%>
		</tbody>
	</table>
</body>
</html>