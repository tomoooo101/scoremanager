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
            margin-bottom: 15px;
        }
        .top-links a {
            font-size: 16px;
            color: #0066cc;
            text-decoration: none;
        }
        .top-links a:hover {
            text-decoration: underline;
        }

        .filter-box {
            border: 1px solid #e0e0e0;
            border-radius: 12px;
            padding: 25px 30px;
            margin-bottom: 30px;
            background-color: #fff;
            display: flex;
            align-items: center;
            gap: 40px;
        }
        .filter-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .filter-group label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        .filter-group select {
            padding: 6px 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            min-width: 130px;
            background-color: #fff;
        }
        .checkbox-group {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 22px;
            font-size: 14px;
        }
        
        .btn-filter {
            background-color: #444;
            color: white;
            border: none;
            padding: 10px 24px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 22px;
        }
        .btn-filter:hover {
            background-color: #333;
        }

        .result-count {
            font-size: 14px;
            margin-bottom: 15px;
            color: #333;
        }

        .student-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 15px;
        }
        .student-table th, .student-table td {
            padding: 12px 10px;
            text-align: left;
            font-size: 14px;
            border-bottom: 1px solid #e0e0e0;
        }
        .student-table th {
            font-weight: bold;
            color: #333;
            border-bottom: 2px solid #333;
        }
        .action-link {
            color: #0066cc;
            text-decoration: none;
        }
        .action-link:hover {
            text-decoration: underline;
        }
        
        .error-message {
            color: #333;
            font-size: 14px;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            <div class="title-bar">学生管理</div>
            
            <div class="top-links">
                <a href="StudentCreate.action">新規登録</a>
            </div>
            
            <form action="StudentList.action" method="get" class="filter-box">
                <div class="filter-group">
                    <label>入学年度</label>
                    <select name="f1">
                        <option value="">--------</option>
                        <c:forEach var="year" items="${years}">
                            <option value="${year}" ${year == param.f1 ? 'selected' : ''}>${year}</option>
                        </c:forEach>
                    </select>
                </div>
                
                <div class="filter-group">
                    <label>クラス</label>
                    <select name="f2">
                        <option value="">--------</option>
                        <c:forEach var="c_name" items="${classes}">
                            <option value="${c_name}" ${c_name == param.f2 ? 'selected' : ''}>${c_name}</option>
                        </c:forEach>
                    </select>
                </div>
                
                <div class="checkbox-group">
                    <input type="checkbox" name="f3" id="attend" value="true" ${param.f3 == 'true' || empty param.f3 ? 'checked' : ''}>
                    <label for="attend">在学中</label>
                </div>
                
                <button type="submit" class="btn-filter">絞込み</button>
            </form>
            
            <div class="result-count">
                検索結果：${students.size()}件
            </div>
            
            <table class="student-table">
                <thead>
                    <tr>
                        <th style="width: 15%;">入学年度</th>
                        <th style="width: 20%;">学生番号</th>
                        <th style="width: 30%;">氏名</th>
                        <th style="width: 15%;">クラス</th>
                        <th style="width: 10%;">在学中</th>
                        <th style="width: 10%;"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.entYear}</td>
                            <td>${student.no}</td>
                            <td>${student.name}</td>
                            <td>${student.classNum}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${student.isAttend}">〇</c:when>
                                    <c:otherwise>×</c:otherwise>
                                </c:choose>
                            </td>
                            <td><a href="StudentChange.action?no=${student.no}" class="action-link">変更</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            <c:if test="${empty students}">
                <div class="error-message">学生情報が存在しませんでした</div>
            </c:if>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>