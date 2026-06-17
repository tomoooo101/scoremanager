<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目情報変更</title>
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

        /* 💡 左右2カラムのレイアウト（他の画面と完全に共通化） */
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
        }

        /* 💡 見出し枠（グレーの背景枠にして他画面と統一） */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 30px;
        }

        /* 📝 入力フォームエリア全体の囲み（大原仕様の綺麗なボックスに） */
        .form-box {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
            margin-bottom: 20px;
        }

        /* 入力項目の各行 */
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        /* 左側のラベル */
        .form-label {
            width: 120px;
            font-size: 15px;
            font-weight: bold;
            color: #555;
        }

        /* 右側の入力・表示エリア */
        .form-input-container {
            flex-grow: 1;
        }

        /* 固定テキスト（変更できない科目コード用） */
        .plain-text {
            font-size: 16px;
            color: #333;
            padding: 6px 0;
            display: inline-block;
        }

        /* 科目名入力テキストボックス */
        .input-field {
            width: 100%;
            max-width: 400px;
            height: 36px;
            padding: 6px 12px;
            font-size: 15px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .input-field:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
        }

        /* 変更ボタン */
        .btn-submit {
            background-color: #0066cc;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            margin-left: 120px; /* ラベルの幅と合わせる */
        }
        .btn-submit:hover {
            background-color: #0052a3;
        }

        /* 戻るリンク */
        .back-link {
            margin-left: 120px;
            margin-top: 15px;
        }
        .back-link a {
            color: #0066cc;
            text-decoration: underline;
            font-size: 14px;
        }
        .back-link a:hover {
            color: #004499;
        }
    </style>
</head>
<body>

<%-- 💡 1. 外からヘッダーを取ってくる --%>
<%@ include file="header.jsp" %>

    <%-- 💡 2. 外枠を他の画面と共通の「main-wrapper」に統一 --%>
    <div class="main-wrapper">

        <%-- 💡 3. 外からサイドバーを取ってくる（古い直書きのサイドバーHTMLはすべて消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <%-- 💡 4. 右側エリアを「content」に統一 --%>
        <div class="content">

            <div class="title-bar">科目情報変更</div>

            <%-- すっきりとした大原仕様のフォームにデザインを調整 --%>
            <div class="form-box">
                <form action="SubjectChangeAction" method="post">

                    <div class="form-row">
                        <div class="form-label">科目コード</div>
                        <div class="form-input-container">
                            <span class="plain-text">F02</span>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-label">科目名</div>
                        <div class="form-input-container">
                            <input type="text" class="input-field" name="subjectName" value="Javaプログラミング基礎" required>
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

<%-- 💡 5. 外からフッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>