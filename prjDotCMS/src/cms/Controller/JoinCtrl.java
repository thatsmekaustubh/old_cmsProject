package cms.Controller;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cms.DAO.MemberDAO;
import cms.DTO.LoginModel;

/**
 * Servlet implementation class JoinCtrl
 */
@WebServlet("/join.do")
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		MemberDAO mdao = new MemberDAO();
		LoginModel dto=new LoginModel();
		StringBuffer str=new StringBuffer();
		String email = null;
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw1"));
		dto.setName(request.getParameter("name"));
		String phone=request.getParameter("phone1")+"-"+
				request.getParameter("phone2")+"-"+
				request.getParameter("phone3");
		str.append(request.getParameter("MBPost1"));
		str.append(request.getParameter("MBPost2"));
		str.append(request.getParameter("MBAddress"));
		if(request.getParameter("addJuso")!=null){
			str.append(" "+request.getParameter("addJuso"));
		}
		dto.setAddress(str.toString());
		dto.setPhone(phone);
		
		if(request.getParameter("e2")!=null){
			email=request.getParameter("e1")+"@"+request.getParameter("e2");
			
		}else if(request.getParameter("e2")==null){
			email=request.getParameter("e1");
		}
		dto.setEmail(email);

		int row = mdao.insertUser(dto);
		if(row >= 1) {
			request.setAttribute("name", request.getParameter("name"));
			request.getRequestDispatcher("alertPage.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("joinFail.jsp").forward(request, response);
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
