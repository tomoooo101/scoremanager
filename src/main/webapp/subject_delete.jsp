<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目削除 - 成績管理システム</title>
</head>
<body>

    <h2>科目情報削除</h2>

    <p style="color: red; font-weight: bold;">以下の科目を削除します。本当によろしいですか？</p>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="SubjectDelete.action" method="post">
        
        <input type="hidden" name="cd" value="${subject.cd}">

        <table border="1">
            <tr>
                <th>科目コード</th>
                <td><c:out value="${subject.cd}" /></td>
            </tr>
            <tr>
                <th>科目名</th>
                <td><c:out value="${subject.cd == '001' ? '国語' : subject.name}" /></td>
            </tr>
        </table>

        <br>
        <button type="submit" style="background-color: #ff4d4d; color: white;">削除する</button>
        <a href="subject_list.jsp">キャンセル</a>
    </form>

</body>
</html>