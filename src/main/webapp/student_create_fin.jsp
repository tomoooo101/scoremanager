<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム</title>
    <style>
        /* 全体のスタイル設定 */
        body {
            font-family: "Helvetica Neue", Arial, "Hiragino Kaku Gothic ProN", "Hiragino Sans", Meiryo, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
            color: #333333;
            /* フッター最下部固定のための設定 */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* 💡 左右2カラムのレイアウト（他の画面と共通の幅・余白に統一しました） */
        .main-wrapper {
            width: 75%;
            margin: 30px auto 0 auto;
            display: flex;
            gap: 4%;
            flex: 1;
        }

        /* 右側コンテンツエリア */
        .content {
            width: 78%;
            display: flex;
            flex-direction: column;
            gap: 15px; /* 各要素の縦の隙間 */
        }

        /* ① 学生情報登録の見出し */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
        }

        /* ② 「登録が完了しました」のメッセージ（緑のバー） */
        .alert-success {
            background-color: #a3cfbb; /* 画像と同じ緑色 */
            color: #145532;            /* 濃い緑の文字 */
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
        }

        /* ③④ 下部のリンクエリア（横並び） */
        .link-group {
            display: flex;
            gap: 40px; /* 「戻る」と「学生一覧」の間の隙間 */
            padding-left: 5px;
            margin-top: 10px;
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

<%-- 💡 1. 外からヘッダーを取ってくる --%>
<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        
        <%-- 💡 2. 外からサイドバーを取ってくる（古いサイドバーHTMLは綺麗に消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            
            <div class="title-bar">学生情報登録</div>
            
            <div class="alert-success">登録が完了しました</div>
            
            <div class="link-group">
                <a href="student_create.jsp">戻る</a>
                <a href="student_list.jsp">学生一覧</a>
            </div>
            
        </div>
    </div>

<%-- 💡 3. 外からフッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>