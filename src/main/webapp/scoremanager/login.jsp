<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/org/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - ログイン</title>
    <style>
        /* メイン画面のベーススタイルを継承 */
        body { font-family: sans-serif; margin: 0; background-color: #fff; }
        header { background-color: #e6f2ff; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; }
        .container { display: flex; min-height: 100vh; }
        
        /* ログイン画面用のメインコンテンツ幅調整 */
        .main-content { flex-grow: 1; padding: 40px 20px; background-color: #fff; }
        
        /* 設計書に合わせたログインフォームのエリア設定 */
        .login-area { 
            background-color: #fff; 
            padding: 30px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            max-width: 400px; /* ログイン用に幅をコンパクトに */
            box-sizing: border-box;
        }
        
        .form-group { margin-bottom: 20px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        
        /* メイン画面と共通の入力フォームスタイル */
        input[type="text"], input[type="password"] { 
            width: 100%; 
            padding: 8px; 
            border: 1px solid #ccc; 
            border-radius: 4px; 
            box-sizing: border-box;
        }
        
        /* メイン画面と共通のボタンスタイル */
        .btn { background-color: #666; color: white; padding: 10px 30px; border: none; border-radius: 4px; cursor: pointer; }
        
        /* エラーメッセージ用のスタイル */
        .error-message {
            color: #ff0000;
            font-size: 14px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<header>
    <h1>得点管理システム</h1>
</header>

<div class="container">
    <main class="main-content">
        <div class="login-area">
            <h2 style="margin-top: 0; margin-bottom: 20px;">ログイン</h2>
            
            <c:if test="${not empty errors}">
                <div class="error-message">
                    <c:forEach var="error" items="${errors}">
                        ${error}<br>
                    </c:forEach>
                </div>
            </c:if>
            
            <form action="Login.action" method="post">
                
                <div class="form-group">
                    <label>教員ID</label>
                    <input type="text" name="id" value="${id}" placeholder="教員IDを入力してください" required>
                </div>

                <div class="form-group">
                    <label>パスワード</label>
                    <input type="password" name="password" placeholder="パスワードを入力してください" required>
                </div>

                <button type="submit" class="btn">ログイン</button>
            </form>
        </div>
    </main>
</div>

</body>
</html>