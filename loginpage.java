package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class loginpage
 */
@WebServlet("/loginpage")
public class loginpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginpage() {
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
		// TODO Auto-generated method stub PrintWriter pw = response.getWriter();
        Connection cn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;

        try {
        	PrintWriter pw=response.getWriter();
            // Use more meaningful variable names
            String username = request.getParameter("vusername");
            String password = request.getParameter("vpass");

            // Always use a try-with-resources statement for AutoCloseable objects
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/biet", "root", "root");
                String checkQuery = "SELECT * FROM users WHERE email=? AND password=?";
                pre = cn.prepareStatement(checkQuery);
                pre.setString(1, username);
                pre.setString(2, password);
                rs = pre.executeQuery();

                if (rs.next()) {
                    // Create a session only if authentication is successful
                    HttpSession session = request.getSession();
                    session.setAttribute("vusername", username);
                    session.setAttribute("vpass", password);
                    response.sendRedirect("project.jsp");
                } else {
                    pw.println("Invalid credentials");
                }
        }
                catch(Exception e)
                {
                	e.printStackTrace();
                }
		doGet(request, response);
	}

}
