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
        .side-menu { width: 150px; padding: 20px; border-right: 1px solid #ccc; }
        .side-menu ul { list-style: none; padding: 0; }
        .side-menu li { margin-bottom: 10px; }
        .side-menu a { text-decoration: none; color: #0066cc; }
        .main-content { flex-grow: 1; padding: 40px; background-color: #fff; }
        .menu-area { max-width: 400px; margin: 0 auto; }
        .menu-title { font-size: 20px; font-weight: bold; margin-bottom: 25px; border-bottom: 1px solid #ccc; padding-bottom: 10px; }
        .menu-group { display: flex; flex-direction: column; gap: 15px; }
        .menu-btn { display: block; background-color: #666; color: white; padding: 15px; border: none; border-radius: 4px; text-align: center; text-decoration: none; font-weight: bold; font-size: 16px; }
        .menu-btn:hover { background-color: #444; }
    </style>
</head>
<body>

<header>
    <h1>得点管理システム</h1>
    <div>${user.name}様 <a href="${pageContext.request.contextPath}/Login.action" style="text-decoration: none; color: #0066cc;">ログアウト</a></div>
</header>

<div class="container">
    <nav class="side-menu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/menu.jsp">メニュー</a></li>
            <li><a href="${pageContext.request.contextPath}/StudentCreate.action">学生管理</a></li>
            <li>成績管理
                <ul style="padding-left: 15px;">
                    <li><a href="#">成績登録</a></li>
                    <li><a href="#">成績参照</a></li>
                </ul>
            </li>
            <li><a href="#">科目管理</a></li>
        </ul>
    </nav>

    <main class="main-content">
        <div class="menu-area">
            <div class="menu-title">メニュー</div>
            <div class="menu-group">
                <a href="${pageContext.request.contextPath}/StudentCreate.action" class="menu-btn">学生管理（登録へ）</a>
                <a href="#" class="menu-btn">成績管理</a>
                <a href="#" class="menu-btn">科目管理</a>
            </div>
        </div>
    </main>
</div>

</body>
</html>