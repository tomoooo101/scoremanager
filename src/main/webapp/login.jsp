<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - ログイン</title>
    <style>
        body { font-family: sans-serif; margin: 0; background-color: #fff; }
        header { background-color: #e6f2ff; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; }
        .container { display: flex; min-height: calc(100vh - 60px); justify-content: center; align-items: center; background-color: #fff; }
        .login-box { background-color: #f5f5f5; padding: 30px; border-radius: 0px; width: 450px; box-sizing: border-box; border: 1px solid #ddd; }
        .login-title { text-align: center; font-size: 18px; font-weight: bold; margin-bottom: 20px; color: #333; }
        .form-group { margin-bottom: 15px; background-color: #e6f2ff; padding: 10px; border-radius: 4px; }
        label { display: block; font-size: 12px; color: #666; margin-bottom: 3px; }
        input[type="text"], input[type="password"] { width: 100%; padding: 5px 0; border: none; background: transparent; font-size: 14px; outline: none; }
        .btn-login { display: block; width: 120px; margin: 20px auto 0 auto; background-color: #0066ff; color: white; padding: 10px 0; border: none; border-radius: 4px; cursor: pointer; font-size: 14px; font-weight: bold; text-align: center; }
        .btn-login:hover { background-color: #0052cc; }
        .error-message { color: #ff0000; font-size: 14px; text-align: center; margin-bottom: 15px; }
        .signup-link-area { text-align: center; margin-top: 20px; font-size: 13px; }
        .signup-link-area a { color: #0066ff; text-decoration: none; }
        .signup-link-area a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<header>
    <h1>得点管理システム</h1>
</header>

<div class="container">
    <div class="login-box">
        <div class="login-title">ログイン</div>
        
        <%
            List<String> errors = (List<String>) request.getAttribute("errors");
            if (errors != null && !errors.isEmpty()) {
        %>
            <div class="error-message">
                <% for (String error : errors) { %>
                    <%= error %><br>
                <% } %>
            </div>
        <%
            }
            String id = (String) request.getAttribute("id");
            if (id == null) id = "";
        %>
        
        <form action="${pageContext.request.contextPath}/Login.action" method="post">
            <div class="form-group">
                <label>I D</label>
                <input type="text" name="id" value="<%= id %>" required>
            </div>
            <div class="form-group">
                <label>パスワード</label>
                <input type="password" name="password" required>
            </div>
            <button type="submit" class="btn-login">ログイン</button>
        </form>

        <div class="signup-link-area">
            アカウントをお持ちでない方は <a href="${pageContext.request.contextPath}/TeacherCreate.action">新規登録</a>
        </div>
    </div>
</div>

</body>
</html>