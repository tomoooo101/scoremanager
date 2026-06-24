<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目削除 - 得点管理システム</title>
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
            width: 85%;
            margin: 30px auto 0 auto;
            display: flex;
            gap: 4%;
            flex: 1;
        }

        .content {
            width: 78%;
        }

        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .warning-text {
            color: red;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .delete-table {
            border-collapse: collapse;
            width: 100%;
            max-width: 500px;
            margin-bottom: 25px;
        }
        .delete-table th, .delete-table td {
            border: 1px solid #e0e0e0;
            padding: 12px;
            font-size: 15px;
        }
        .delete-table th {
            background-color: #f5f5f5;
            width: 30%;
            text-align: left;
        }

        .btn-delete {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 10px 24px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
        }
        .btn-delete:hover {
            background-color: #e04040;
        }

        .cancel-link {
            margin-left: 20px;
            color: #0d6efd;
            text-decoration: underline;
            font-size: 14px;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            <div class="title-bar">科目情報削除</div>

            <p class="warning-text">以下の科目を削除します。本当によろしいですか？</p>

            <c:if test="${not empty error}">
                <p style="color: red; font-weight: bold;">${error}</p>
            </c:if>

            <form action="SubjectDelete.action" method="post">
                <input type="hidden" name="cd" value="${subject.cd}">

                <table class="delete-table">
                    <tr>
                        <th>科目コード</th>
                        <td><c:out value="${subject.cd}" /></td>
                    </tr>
                    <tr>
                        <th>科目名</th>
                        <td><c:out value="${subject.name}" /></td>
                    </tr>
                </table>

                <button type="submit" class="btn-delete">削除する</button>
                <a href="subject_list.jsp" class="cancel-link">キャンセル</a>
            </form>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>