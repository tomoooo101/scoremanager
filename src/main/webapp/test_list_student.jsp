<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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

        .search-box {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 25px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .search-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .row-label {
            width: 100px;
            font-size: 14px;
            color: #666;
            font-weight: bold;
        }

        .search-form {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-grow: 1;
        }
        .search-group {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .search-select {
            padding: 6px 10px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }
        .search-select.subject {
            width: 180px;
        }
        .search-input {
            width: 200px;
            padding: 6px 10px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }

        .btn-search {
            background-color: #555555;
            color: white;
            border: none;
            padding: 6px 18px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            margin-left: auto;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            <div class="title-bar">成績参照</div>

            <div class="search-box">
                <form action="TestList.action" method="get" class="search-row">
                    <div class="row-label">科目情報</div>
                    <div class="search-form">
                        <div class="search-group">
                            <label>入学年度</label>
                            <select name="f1" class="search-select">
                                <c:forEach var="year" items="${ent_year_set}">
                                    <option value="${year}" ${year == f1 ? 'selected' : ''}>${year}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="search-group">
                            <label>クラス</label>
                            <select name="f2" class="search-select">
                                <c:forEach var="classNum" items="${class_num_set}">
                                    <option value="${classNum}" ${classNum == f2 ? 'selected' : ''}>${classNum}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="search-group">
                            <label>科目</label>
                            <select name="f3" class="search-select subject">
                                <c:forEach var="subject" items="${subjects}">
                                    <option value="${subject.cd}" ${subject.cd == f3 ? 'selected' : ''}>${subject.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <button type="submit" class="btn-search">検索</button>
                    </div>
                </form>

                <hr style="border: 0; border-top: 1px dashed #e0e0e0; margin: 15px 0;">

                <form action="TestListStudent.action" method="get" class="search-row">
                    <div class="row-label">学生情報</div>
                    <div class="search-form">
                        <div class="search-group">
                            <label>学生番号</label>
                            <input type="text" name="f4" class="search-input" placeholder="学生番号を入力してください" required>
                        </div>
                        <button type="submit" class="btn-search">検索</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>