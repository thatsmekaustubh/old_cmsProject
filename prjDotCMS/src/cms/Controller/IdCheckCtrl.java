package cms.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.DAO.MemberDAO;

/**
 * Servlet implementation class IdCheckCtrl
 */
@WebServlet("/idCheckCtrl")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheckCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 
		String id=request.getParameter("id");
		
		MemberDAO mDao=new MemberDAO();
		int row=mDao.idCheck(id);
		
		if(row==0){
			request.setAttribute("flag", "0");
		}else{
			request.setAttribute("flag", "garbige");
		}
		request.getRequestDispatcher("idOverlapCheck.jsp?id="+id).forward(request, response);
	}

}
