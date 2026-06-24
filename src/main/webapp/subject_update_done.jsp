<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目変更完了 - 得点管理システム</title>
    <style>
        body {
            font-family: "Helvetica Neue", Arial, "Hiragino Kaku Gothic ProN", "Hiragino Sans", Meiryo, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
            color: #333333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .main-wrapper {
            width: 75%;
            margin: 30px auto 0 auto;
            display: flex;
            gap: 4%;
            flex: 1;
        }

        .content {
            width: 78%;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
        }

        .alert-success {
            background-color: #a3cfbb;
            color: #145532;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
        }

        .link-group {
            display: flex;
            gap: 40px;
            padding-left: 5px;
            margin-top: 15px;
        }
        .link-group a {
            color: #0d6efd;
            text-decoration: underline;
            font-size: 14px;
        }
        .link-group a:hover {
            color: #0a58ca;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            <div class="title-bar">科目情報変更</div>
            
            <div class="alert-success">変更が完了しました</div>
            
            <div class="link-group">
                <a href="subject_list.jsp">科目一覧へ戻る</a>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>