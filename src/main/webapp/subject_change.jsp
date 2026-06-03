<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目変更 - 成績管理システム</title>
</head>
<body>

    <h2>科目情報変更</h2>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="SubjectUpdate.action" method="post">
        <table>
            <tr>
                <th>科目コード</th>
                <td>
                    <input type="text" name="cd" value="${subject.cd}" readonly style="background-color: #e9e9e9;">
                </td>
            </tr>
            <tr>
                <th>科目名</th>
                <td>
                    <input type="text" name="name" value="${subject.name}" size="20" maxlength="20" required>
                </td>
            </tr>
        </table>

        <br>
        <button type="submit">変更</button>
        <a href="SubjectList.action">戻る</a>
    </form>

</body>
</html>