package tool;

import java.io.IOException;
import dao.TeacherDao;
import bean.Teacher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Login.action") // ログイン用のURLを設定します
public class LoginAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 最初にログイン画面を表示するときの処理（GET）
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // login.jspを表示する
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // ログインボタンが押されて、IDとパスワードが送られてきたときの処理（POST）
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        // ① JSPの入力欄（name="userId" と name="password"）から値を受け取る
        String id = request.getParameter("userId");
        String password = request.getParameter("password");
        
        // ② 厨房（DAO）を呼び出して、データベースを調べてもらう
        TeacherDao dao = new TeacherDao();
        Teacher teacher = dao.login(id, password);
        
        // ③ 判定結果によって画面遷移（案内）を切り替える
        if (teacher != null) {
            // ログイン成功！メニュー画面にリダイレクト
            response.sendRedirect("menu.jsp");
        } else {
            // ログイン失敗…！もう一度ログイン画面に戻す（エラーメッセージ付き）
            request.setAttribute("error", "ユーザーIDまたはパスワードが違います");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}