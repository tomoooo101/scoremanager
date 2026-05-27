<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - メニュー</title>
    <style>
        body { font-family: sans-serif; margin: 0; }
        header { background-color: #e6f2ff; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; }
        .container { display: flex; min-height: 100vh; }
        .main-content { flex-grow: 1; padding: 40px; background-color: #fff; }
        .menu-area { max-width: 400px; margin: 0 auto; }
        .menu-title { font-size: 20px; font-weight: bold; margin-bottom: 25px; border-bottom: 1px solid #ccc; padding-bottom: 10px; }
        .menu-group { display: flex; flex-direction: column; gap: 15px; }
        .menu-btn { display: block; background-color: #666; color: white; padding: 15px; border: none; border-radius: 4px; cursor: pointer; text-align: center; text-decoration: none; font-weight: bold; font-size: 16px; }
        .menu-btn:hover { background-color: #444; }
    </style>
</head>
<body>

<header>
    <h1>得点管理システム</h1>
    <div>${user.name}様 <a href="Login.action" style="text-decoration: none; color: #0066cc;">ログアウト</a></div>
</header>

<div class="container">
    <main class="main-content">
        <div class="menu-area">
            <div class="menu-title">メニュー</div>
            <div class="menu-group">
                <a href="student_create.jsp" class="menu-btn">学生管理（登録へ）</a>
                <a href="#" class="menu-btn">成績管理</a>
                <a href="#" class="menu-btn">科目管理</a>
            </div>
        </div>
    </main>
</div>

</body>
</html>