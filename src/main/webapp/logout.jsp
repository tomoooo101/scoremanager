<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム</title>
    <style>
        /* 全体のリセットと基本スタイル */
        body {
            font-family: "Helvetica Neue", Arial, "Hiragino Kaku Gothic ProN", "Hiragino Sans", Meiryo, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
            color: #333333;
        }

        /* ヘッダー部分 */
        header {
            background-color: #eef4ff; /* 薄い青色の背景 */
            padding: 20px 0 20px 15%;
            border-bottom: 1px solid #d0d7de;
        }
        h1 {
            margin: 0;
            font-size: 28px;
            font-weight: bold;
            color: #1a2a3a;
        }

        /* メインコンテンツの外枠 */
        .container {
            width: 70%;
            margin: 30px auto;
            display: flex;
            flex-direction: column;
            gap: 15px; /* 各要素の隙間 */
        }

        /* ① 「ログアウト」の見出し部分 */
        .title-bar {
            background-color: #f0f0f0; /* 薄いグレー */
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
        }

        /* ② 「ログアウトしました」のメッセージ（緑のバー） */
        .alert-success {
            background-color: #a3cfbb; /* 画像に合わせた緑色 */
            color: #145532;            /* 濃い緑の文字 */
            padding: 10px;
            text-align: center;
            font-size: 14px;
            border-radius: 4px;
        }

        /* ③ 「ログイン」リンク */
        .login-link {
            text-align: left;
            padding-left: 10px;
        }
        .login-link a {
            color: #0d6efd; /* 青色のリンク */
            text-decoration: underline;
            font-size: 14px;
        }
        .login-link a:hover {
            color: #0a58ca;
        }

        /* フッター部分 */
        footer {
            background-color: #e2e2e2; /* 濃いめのグレー */
            text-align: center;
            padding: 15px 0;
            font-size: 12px;
            color: #666666;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>得点管理システム</h1>
    </header>

    <div class="container">
        
        <div class="title-bar">ログアウト</div>
        
        <div class="alert-success">ログアウトしました</div>
        
        <div class="login-link">
            <a href="Login.action">ログイン</a>
        </div>
        
    </div>

    <footer>
        &copy; 2023 TIC<br>
        大原学園
    </footer>

</body>
</html>