package cms.Controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.DAO.MemberDAO;
import cms.DTO.LoginModel;

/**
 * Servlet implementation class LoginCtrl
 */
@WebServlet("/login.do")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8"); 
    	HttpSession session = request.getSession();
    	
    	MemberDAO mdao = new MemberDAO();
    	String pid = request.getParameter("id");
    	String ppw = request.getParameter("pw");
    	LoginModel lm = mdao.isValidUser(pid, ppw);
    	
    	if(lm != null){
    		session.setAttribute("logined", lm);
    		session.setAttribute("flag", "1");
    	}else{
    		System.out.println("lm null");
    		session.setAttribute("flag", "2");
    	}
    	
    	request.getRequestDispatcher("index.jsp?content=loginView.jsp").forward(request, response);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

}
