package cms.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.DAO.MemberDAO;
import cms.DTO.LoginModel;

/**
 * Servlet implementation class MyInfoCtrl
 */
@WebServlet("/myInfoCtrl")
public class MyInfoCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyInfoCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
    	HttpSession session = request.getSession();
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String phone[]=null;
		String email[]=null;
		MemberDAO mDao = new MemberDAO();
		LoginModel lm = mDao.isValidUser(id, pw);
		
		if(lm.getPhone()!=null){
			phone=lm.getPhone().split("-");
		}
		if(lm.getEmail()!=null){
			email=lm.getEmail().split("@");
		}
		
		if(lm != null){
    		session.setAttribute("logined", lm);
    		if(phone!=null){
    			request.setAttribute("phone", phone);
    		}
    		if(email!=null){
    			request.setAttribute("email", email);
    		}
    	}else{
    		System.out.println("lm null");
    	}
    	request.getRequestDispatcher("index.jsp?content=MyInfoView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		LoginModel dto=new LoginModel();
		MemberDAO mDao=new MemberDAO();
		String email = null;
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw1"));
		dto.setName(request.getParameter("name"));
		dto.setAddress(request.getParameter("address"));
		String phone=request.getParameter("phone1")+"-"+
				request.getParameter("phone2")+"-"+
				request.getParameter("phone3");
		dto.setPhone(phone);
		if(request.getParameter("e2")!=null){
			email=request.getParameter("e1")+"@"+request.getParameter("e2");
			
		}else if(request.getParameter("e2")==null){
			email=request.getParameter("e1");
		}
		dto.setEmail(email);
		
		int row = mDao.updateUser(dto);
    	if(row >= 1) {
    		request.setAttribute("name", request.getParameter("name"));
    		request.getRequestDispatcher("index.jsp?content=alertPage.jsp").forward(request, response);
    	}
    	else
    	   	request.getRequestDispatcher("joinFail.jsp").forward(request, response);
    	
	}

}
