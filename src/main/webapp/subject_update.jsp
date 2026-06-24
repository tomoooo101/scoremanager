<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目情報変更</title>
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
            margin-bottom: 30px;
        }

        .form-box {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .form-label {
            width: 120px;
            font-size: 15px;
            font-weight: bold;
            color: #555;
        }

        .plain-text {
            font-size: 16px;
            color: #333;
            padding: 6px 0;
            display: inline-block;
        }

        .input-field {
            width: 100%;
            max-width: 300px;
            height: 36px;
            padding: 6px 12px;
            font-size: 15px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-submit {
            background-color: #0066cc;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            margin-left: 120px;
        }
        .btn-submit:hover {
            background-color: #0052a3;
        }

        .back-link {
            margin-top: 20px;
            margin-left: 120px;
        }
        .back-link a {
            color: #0066cc;
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
            <div class="title-bar">科目情報変更</div>

            <div class="form-box">
                <form action="SubjectUpdateExecute.action" method="post">
                    <div class="form-row">
                        <div class="form-label">科目コード</div>
                        <div class="form-input-container">
                            <span class="plain-text">${subject.cd}</span>
                            <input type="hidden" name="cd" value="${subject.cd}">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-label">科目名</div>
                        <div class="form-input-container">
                            <input type="text" class="input-field" name="name" value="${subject.name}" required>
                        </div>
                    </div>

                    <button type="submit" class="btn-submit">変更</button>
                </form>
                <div class="back-link">
                    <a href="subject_list.jsp">戻る</a>
                </div>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>

</body>
</html>