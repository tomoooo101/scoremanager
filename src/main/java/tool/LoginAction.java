package tool;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import bean.Teacher; // 💡 変更しないクラス名「Teacher」をそのまま使用
import dao.TeacherDao;

@WebServlet("/Login.action") // 💡 URLの重複を解消し、正しいログインURLにします
public class LoginAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        TeacherDao dao = new TeacherDao();
        Teacher teacher = dao.login(id, password);

        if (teacher != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", teacher);
            response.sendRedirect("menu.jsp");
        } else {
            List<String> errors = new ArrayList<>();
            errors.add("教員IDまたはパスワードが間違っています。");
            request.setAttribute("errors", errors);
            request.setAttribute("id", id);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}