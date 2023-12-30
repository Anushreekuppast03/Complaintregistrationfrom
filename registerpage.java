package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerpage
 */
@WebServlet("/registerpage")
public class registerpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerpage() {
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
		PrintWriter pw = response.getWriter();
        Connection con = null;
        try {
            String uemail = request.getParameter("useremail");
            String upassword = request.getParameter("password");
            String uconfirm = request.getParameter("confirmpassword");
            String uaddress = request.getParameter("address");
            String udate = request.getParameter("date");

            // Establishing database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biet", "root", "root");

            // Checking if the user already exists
            String check = "SELECT * FROM users WHERE email=?";
            try (PreparedStatement cpre = con.prepareStatement(check)) {
                cpre.setString(1, uemail);
                try (ResultSet rs1 = cpre.executeQuery()) {
                    if (rs1.next()) {
                        pw.println("User already exists");
                    } else {
                        // Inserting new user
                        String str = "INSERT INTO users VALUES(?,?,?,?,?)";
                        try (PreparedStatement ps = con.prepareStatement(str)) {
                            ps.setString(1, uemail);
                            ps.setString(2, upassword);
                            ps.setString(3, uconfirm);
                        
                            ps.setString(4, uaddress);
                            ps.setString(5, udate);
                            ps.execute();
                            pw.println("Success");
                            response.sendRedirect("login.jsp");
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
	}

}
