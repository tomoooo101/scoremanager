package tool; // ★学校の指定パッケージ名に合わせてください

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Teacher;
import dao.TeacherDao;

@WebServlet("/Login.action")
public class LoginAction extends HttpServlet {
    private static final long serialVersionUID = 1;

    // ログイン画面を最初に表示するときの処理
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // ログインボタンが押されてデータが送信されてきたときの処理
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        TeacherDao dao = new TeacherDao();
        Teacher teacher = dao.login(id, password);

        if (teacher != null) {
            // 認証成功：セッションに教員情報を保存してメニューへ
            HttpSession session = request.getSession();
            session.setAttribute("user", teacher);
            request.getRequestDispatcher("menu.jsp").forward(request, response);
        } else {
            // 認証失敗：エラーメッセージを作ってログイン画面に戻す
            List<String> errors = new ArrayList<>();
            errors.add("教員IDまたはパスワードが間違っています。");
            request.setAttribute("errors", errors);
            request.setAttribute("id", id);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}