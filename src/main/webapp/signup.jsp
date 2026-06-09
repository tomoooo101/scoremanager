<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - 新規登録</title>
    <style>
        body { font-family: sans-serif; margin: 50px; text-align: center; background-color: #f5f5f5; }
        .box { background: white; padding: 4px; border: 1px solid #ccc; width: 400px; margin: 0 auto; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        h2 { background: #e6f2ff; margin: 0 0 20px 0; padding: 10px; font-size: 18px; border-bottom: 1px solid #ccddee; }
        .field { margin-bottom: 15px; text-align: left; padding: 0 20px; }
        label { display: block; font-size: 14px; margin-bottom: 5px; }
        input[type="text"], input[type="password"] { width: 90%; padding: 8px; font-size: 14px; }
        .btn { background: #0066cc; color: white; border: none; padding: 10px 20px; font-size: 14px; cursor: pointer; margin-top: 10px; }
        .btn:hover { background: #004ea3; }
        .link { display: block; margin-top: 15px; font-size: 13px; color: #0066cc; text-decoration: none; }
    </style>
</head>
<body>

<div class="box">
    <h2>アカウント新規登録</h2>
    <form action="SignUp.action" method="post">
        <div class="field">
            <label>ログインID</label>
            <input type="text" name="id" required>
        </div>
        <div class="field">
            <label>パスワード</label>
            <input type="password" name="password" required>
        </div>
        <div class="field">
            <label>氏名</label>
            <input type="text" name="name" required>
        </div>
        <input type="submit" class="btn" value="登録する">
    </form>
    <a href="login.jsp" class="link">ログイン画面に戻る</a>
</div>

</body>
</html>