package tool;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SubjectCreate.action") // 💡 科目登録画面を呼び出すURL
public class SubjectCreateAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 科目登録画面（JSP）へ遷移させる準備
        request.getRequestDispatcher("subject_create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 登録ボタンが押された後の処理（一旦、一覧へリダイレクト）
        response.sendRedirect("SubjectList.action");
    }
}