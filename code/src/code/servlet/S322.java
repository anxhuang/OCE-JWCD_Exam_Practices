package code.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S322
 */
@WebServlet("/S322")
public class S322 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S322() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher	rd=request.getRequestDispatcher("/banner.jsp");
		rd.include(request, response);
		//
		PrintWriter	out=response.getWriter();
		out.println("<center><div>");
		out.println("<h2>Servlet/Database Insert, S322</h2><h3>");
		out.println("<table width='80%' border='1'>");
		out.println("<tr><td>#ID</td><td>名稱</td><td>價格</td><td>數量</td><td>日期</td></tr>");
		//String	s="SELECT * FROM t_cost";
		String	url="jdbc:mysql://localhost:3306/cost";
		try{
			Class.forName("com.mysql.jdbc.Driver"); //ClassNotFoundException
			Connection	cn=DriverManager.getConnection(url,"root","1234");
			//Statement	st=cn.createStatement();
			//ResultSet	rs=st.executeQuery(s);
			
			String	no=request.getParameter("no");
			String	name=request.getParameter("name");
			String	price=request.getParameter("price");
			String	qty=request.getParameter("qty");
			String	date=request.getParameter("date");
						
			PreparedStatement	p=cn.prepareStatement("INSERT INTO t_cost VALUES(?,?,?,?,?)");
			p.setString(1, no);
			p.setString(2, name);
			p.setString(3, price);
			p.setString(4, qty);
			p.setString(5, date);
			int	i=p.executeUpdate();
			if(i != 0){
				out.println("<tr><td>"+no+"</td><td>"+name+"</td><td>"+price+"</td><td>"+
						qty+"</td><td>"+date+"</td></tr><tr><td colspan='5'>新增成功 !!</td></tr>");
			}else{
				out.println("<tr><td colspan='5'>新增失敗 ??</td></tr>");
			}
			cn.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		out.println("</table></h3></div></center>");
		//
		rd=request.getRequestDispatcher("/footer.jsp");
		rd.include(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
