package cms.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.DAO.MemberDAO;

/**
 * Servlet implementation class DeleteCtrl
 */
@WebServlet("/deleteCtrl")
public class DeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8"); 
    	MemberDAO mdao = new MemberDAO();
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	int row = mdao.deleteUser(id, pw);
    	String url = "index.jsp?content=alertPage.jsp";
    	if(row >= 1)
    		request.setAttribute("message", "탈퇴성공");    		
    	else
    		request.setAttribute("message", "탈퇴실패");

    	request.getRequestDispatcher(url).forward(request, response);
    	
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
