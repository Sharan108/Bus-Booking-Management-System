package pack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class jspserver
 */
@WebServlet("/jspserver")
public class ss extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ss() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("btn");
		if(name.equalsIgnoreCase("SignUp"))
		{
			response.sendRedirect("SignUp.jsp");
		}
		else
		{
			String n=request.getParameter("emails");
			String passwd=request.getParameter("psws");
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
				Statement st=con.createStatement();
				String sql;
				sql="SELECT * from userinfo where email='"+n+"'and password='"+passwd+"'";
				ResultSet rs=st.executeQuery(sql);
				if(rs.next())
				{
					 //out.print("WELCOME  "+rs.getString(1));
					HttpSession ses=request.getSession();
					ses.setAttribute("uname", rs.getString(1));
					response.sendRedirect("index.jsp");
				
				}
				else{
					response.sendRedirect("firstlogin.jsp?msg=please enter valid username and password");
				}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
	}

}
