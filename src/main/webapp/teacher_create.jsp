<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - 教員新規登録</title>
    <style>
        body { font-family: sans-serif; margin: 0; background-color: #fff; }
        header { background-color: #e6f2ff; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; }
        .container { display: flex; min-height: calc(100vh - 60px); justify-content: center; align-items: center; background-color: #fff; }
        .register-box { background-color: #f5f5f5; padding: 30px; border-radius: 0px; width: 450px; box-sizing: border-box; border: 1px solid #ddd; }
        .register-title { text-align: center; font-size: 18px; font-weight: bold; margin-bottom: 20px; color: #333; }
        .form-group { margin-bottom: 15px; background-color: #e6f2ff; padding: 10px; border-radius: 4px; }
        label { display: block; font-size: 12px; color: #666; margin-bottom: 3px; font-weight: bold; }
        input[type="text"], input[type="password"] { width: 100%; padding: 5px 0; border: none; background: transparent; font-size: 14px; outline: none; }
        .btn-register { display: block; width: 120px; margin: 20px auto 0 auto; background-color: #0066ff; color: white; padding: 10px 0; border: none; border-radius: 4px; cursor: pointer; font-size: 14px; font-weight: bold; text-align: center; }
        .btn-register:hover { background-color: #0052cc; }
        .back-link-area { text-align: center; margin-top: 20px; font-size: 13px; }
        .back-link-area a { color: #0066ff; text-decoration: none; }
        .back-link-area a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<header>
    <h1>得点管理システム</h1>
</header>

<div class="container">
    <div class="register-box">
        <div class="register-title">教員新規登録</div>
        
        <form action="TeacherCreate.action" method="post">
            <div class="form-group">
                <label>教員ID</label>
                <input type="text" name="id" placeholder="教員IDを入力してください" required>
            </div>
            <div class="form-group">
                <label>パスワード</label>
                <input type="password" name="password" placeholder="パスワードを入力してください" required>
            </div>
            <div class="form-group">
                <label>氏名</label>
                <input type="text" name="name" placeholder="お名前を入力してください" required>
            </div>
            <div class="form-group">
                <label>学校コード</label>
                <input type="text" name="schoolCode" placeholder="学校コード（例: oohara）" required>
            </div>
            <button type="submit" class="btn-register">登録する</button>
        </form>

        <div class="back-link-area">
            既にアカウントをお持ちの方は <a href="Login.action">ログイン画面へ戻る</a>
        </div>
    </div>
</div>

</body>
</html>