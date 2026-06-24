<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - 成績管理</title>

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
        }

        /* 💡 見出し（グレーの背景枠に変更して他画面と統一） */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        /* 🔍 検索フォームエリア全体の囲み */
        .search-box {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 25px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .form-row {
            display: flex;
            align-items: flex-end;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            margin-bottom: 5px;
            font-size: 13px;
            color: #666;
            font-weight: bold;
        }

        input[type="text"],
        select {
            width: 140px;
            height: 32px;
            padding: 4px 8px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .subject-select {
            width: 200px;
        }

        /* 検索ボタン */
        .btn-search {
            background-color: #555555;
            color: white;
            border: none;
            padding: 0 18px;
            height: 32px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        .btn-search:hover {
            background-color: #444444;
        }
    </style>
</head>
<body>

<%-- 💡 1. 外からヘッダーを取ってくる --%>
<%@ include file="header.jsp" %>

    <%-- 💡 2. 枠組みを「main-wrapper」に変更 --%>
    <div class="main-wrapper">

        <%-- 💡 3. 外からサイドバーを取ってくる（古いサイドバーHTMLと古いCSSは完全に消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <%-- 💡 4. 右側エリアを「content」に変更 --%>
        <div class="content">

            <div class="title-bar">成績管理</div>

            <%-- 検索ボックスエリア --%>
            <div class="search-box">
                <form action="ScoreSearch.action" method="get">
                    <div class="form-row">

                        <div class="form-group">
                            <label>入学年度</label>
                            <input type="text" name="entYear" placeholder="例: 2023">
                        </div>

                        <div class="form-group">
                            <label>クラス</label>
                            <select name="classNum">
                                <option value="">--------</option>
                                <c:forEach var="c" items="${classList}">
                                    <option value="${c.classNum}">${c.classNum}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>科目</label>
                            <select name="subjectCd" class="subject-select">
                                <option value="">--------</option>
                                <c:forEach var="s" items="${subjectList}">
                                    <option value="${s.cd}">${s.name}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>回数</label>
                            <select name="count">
                                <option value="">----</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>

                        <button type="submit" class="btn-search">検索</button>
                    </div>
                </form>
            </div>
            
        </div>
    </div>

<%-- 💡 5. 外からフッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>