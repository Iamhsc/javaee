package cn.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.model.Student;
import cn.model.StudentDao;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/student")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao dao = new StudentDao();

		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		if (action != null) {
			if (action.equals("save")) {
				Student stu = doForm(request);
				dao.save(stu);
			} else if (action.equals("more")) {
				String id = request.getParameter("id");
				Student stu = dao.get(id);
				request.setAttribute("stu", stu);
				request.getRequestDispatcher("more.jsp").forward(request, response);
				return;
			} else if (action.equals("edit")) {

			} else if (action.equals("update")) {

			} else if (action.equals("delete")) {
				String id = request.getParameter("id");
				dao.delete(id);
			}
		}
		List list = dao.getAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("list.jsp").forward(request, response);
	}

	private Student doForm(HttpServletRequest request) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String professional = request.getParameter("professional");
		String[] hobby = request.getParameterValues("hobby");
		String self = request.getParameter("self");
		String photo = request.getParameter("photo");
		Student stu = new Student(id, name, sex, professional, hobby, self, photo);
		return stu;
	}

}
