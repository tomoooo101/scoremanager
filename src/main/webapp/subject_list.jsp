<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム</title>
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

        .top-links {
            text-align: right;
            margin-bottom: 20px;
        }
        .top-links a {
            font-size: 16px;
            color: #0066cc;
            text-decoration: none;
        }
        .top-links a:hover {
            text-decoration: underline;
        }

        .subject-table {
            width: 100%;
            border-collapse: collapse;
        }
        .subject-table th, .subject-table td {
            padding: 15px 10px;
            text-align: left;
            font-size: 16px;
            border-bottom: 1px solid #e0e0e0;
        }
        .subject-table th {
            font-weight: bold;
            color: #333;
            border-bottom: 2px solid #333;
        }
        
        .action-cell {
            text-align: center;
            width: 100px;
        }
        .action-link {
            color: #0066cc;
            text-decoration: none;
        }
        .action-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            <div class="title-bar">科目管理</div>
            
            <div class="top-links">
                <a href="subject_create.jsp">新規登録</a>
            </div>
            
            <table class="subject-table">
                <thead>
                    <tr>
                        <th style="width: 25%;">科目コード</th>
                        <th style="width: 55%;">科目名</th>
                        <th class="action-cell"></th>
                        <th class="action-cell"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="subject" items="${subjects}">
                        <tr>
                            <td>${subject.cd}</td>
                            <td>${subject.name}</td>
                            <td class="action-cell"><a href="SubjectUpdate.action?cd=${subject.cd}" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="SubjectDelete.action?cd=${subject.cd}" class="action-link">削除</a></td>
                        </tr>
                    </c:forEach>
                    
                    <c:if test="${empty subjects}">
                        <tr>
                            <td>1</td>
                            <td>python</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>java</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>基本情報</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>