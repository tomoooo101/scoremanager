<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目登録 - 得点管理システム</title>
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

        /* 💡 左右2カラムのレイアウト（他の画面と共通の幅・余白に完全統一しました） */
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
            gap: 15px;
        }

        /* ① 科目情報登録の見出し */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
        }

        /* エラーメッセージ表示 */
        .alert-error {
            background-color: #f8d7da;
            color: #842029;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
        }

        /* 📝 入力フォームのスタイル設定 */
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 14px;
            color: #444;
        }
        .form-control {
            width: 50%;
            min-width: 300px; /* 💡 画面が縮んだ時につぶれないよう最低幅を設定 */
            padding: 8px 12px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-control:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
        }
        .form-text {
            font-size: 12px;
            color: #666;
            margin-top: 5px;
        }

        /* 登録ボタン */
        .btn-submit {
            background-color: #555555;
            color: white;
            border: none;
            padding: 8px 24px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        .btn-submit:hover {
            background-color: #444444;
        }

        /* 下部リンクエリア */
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

<%-- 💡 1. 外から共通ヘッダーを取ってくる（直書きの古いheader用スタイルは削除しました） --%>
<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        
        <%-- 💡 2. 外から共通サイドバーを取ってくる（古いサイドバーHTMLは綺麗に消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <div class="content">
            
            <div class="title-bar">科目情報登録</div>
            
            <%-- エラーメッセージ表示 --%>
            <c:if test="${not empty error}">
                <div class="alert-error">${error}</div>
            </c:if>
            
            <%-- 登録フォーム --%>
            <form action="SubjectCreate.action" method="post">
                <div class="form-group">
                    <label for="cd">科目コード</label>
                    <input type="text" id="cd" name="cd" class="form-control" placeholder="科目コードを入力してください" maxlength="3" required>
                    <div class="form-text">※3文字の英数字</div>
                </div>
                
                <div class="form-group">
                    <label for="name">科目名</label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="科目名を入力してください" required>
                </div>
                
                <button type="submit" class="btn-submit">登録</button>
            </form>
            
            <div class="link-group">
                <a href="subject_list.jsp">戻る</a>
            </div>
            
        </div>
    </div>

<%-- 💡 3. 外から共通フッターを取ってくる（位置固定を壊す古いfooter用スタイルは削除しました） --%>
<%@ include file="footer.jsp" %>

</body>
</html>