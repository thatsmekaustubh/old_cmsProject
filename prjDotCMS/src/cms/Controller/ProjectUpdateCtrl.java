package cms.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cms.DAO.ProjectDAO;
import cms.DTO.ProjectDTO;

/**
 * Servlet implementation class ProjectUpdateCtrl
 */
@WebServlet("/projectUpdateCtrl")
@MultipartConfig(location="", fileSizeThreshold=1024*1024, 
maxFileSize=1024*1024*8, maxRequestSize=1024*1024*8*5)
public class ProjectUpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String partName;
	private String partValue;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectUpdateCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int key=Integer.parseInt(request.getParameter("key"));
		ProjectDAO pDao=new ProjectDAO();
		ArrayList<ProjectDTO> list = pDao.select(key);
		ProjectDTO dto = list.get(0);
		if(dto!=null){
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("index.jsp?content=projectFormUpdate.jsp").forward(request, response);
		}else if(dto == null){
			System.out.println("list null");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		ProjectDTO pDto=new ProjectDTO();
		ProjectDAO pDao=new ProjectDAO();
		Collection<Part> parts = request.getParts();
		for(Part part : parts) {
			partName = part.getName();
			if(part.getContentType() != null) {
				partValue = getFileName(part);
				if (partValue != null && ! partValue.isEmpty()) {
					String absolutePath = getServletContext().getRealPath("/upload");
					part.write(absolutePath + File.separator + partValue);
				}
			}
			else {
				partValue = request.getParameter(partName);
			}
			System.out.println(partName + ":" + partValue);
			request.setAttribute(partName, partValue);
		}
		pDto.setSeq(Integer.parseInt((String) request.getAttribute("seq")));
		pDto.setTitle((String)request.getAttribute("id"));
		pDto.setAuthor((String)request.getAttribute("pw"));
		pDto.setImage((String)request.getAttribute("image"));
		pDto.setFilename((String)request.getAttribute("filename"));
		pDto.setDescription((String)request.getAttribute("comments"));
		int row=pDao.update(pDto);
		
		if(row>=1){
			request.setAttribute("flag", "1");
			request.getRequestDispatcher("index.jsp?content=teamproject.jsp").forward(request,response);
		}else if(row==0){
			request.setAttribute("flag", "2");
			request.getRequestDispatcher("index.jsp?content=projectForm.jsp").forward(request,response);
		}
	}
	private String getFileName(Part part) {
		String contentDispositionHeader = part.getHeader("content-disposition");
		String[] splitedContentDisposition = contentDispositionHeader.split(";");
		for (String cd : splitedContentDisposition ) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
}
