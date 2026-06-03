<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目登録 - 成績管理システム</title>
    </head>
<body>

    <%-- <c:import url="header.jsp" /> --%>

    <h2>科目情報登録</h2>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="SubjectCreate.action" method="post">
        <table>
            <tr>
                <th>科目コード</th>
                <td>
                    <input type="text" name="cd" size="3" maxlength="3" required>
                    <small>※3文字の英数字</small>
                </td>
            </tr>
            <tr>
                <th>科目名</th>
                <td>
                    <input type="text" name="name" size="20" maxlength="20" required>
                </td>
            </tr>
        </table>

        <br>
        <button type="submit">登録</button>
        <a href="SubjectList.action">戻る</a>
    </form>

</body>
</html>