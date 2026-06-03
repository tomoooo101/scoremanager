package tool;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TeacherCreate.action") // 💡 エラーが出ているこのURLだけを確実に待ち受けます
public class TeacherCreateAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 💡 新しく作成した teacher_create.jsp を表示します
        request.getRequestDispatcher("teacher_create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 登録ボタンが押されたらログインへ戻る設定
        response.sendRedirect("Login.action");
    }
}