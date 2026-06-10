<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTLタグライブラリの宣言（一覧のループや条件分岐に使用します） --%>
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
        }

        /* ヘッダー */
        header {
            background-color: #eef4ff;
            padding: 20px 15%;
            border-bottom: 1px solid #d0d7de;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h1 {
            margin: 0;
            font-size: 28px;
            font-weight: bold;
            color: #1a2a3a;
        }
        .user-info {
            font-size: 14px;
        }
        .user-info a {
            color: #0d6efd;
            text-decoration: underline;
            margin-left: 10px;
        }

        /* 左右2カラムのレイアウト */
        .main-wrapper {
            width: 75%;
            margin: 30px auto 100px auto;
            display: flex;
            gap: 4%;
        }

        /* 左側メニュー */
        .sidebar {
            width: 18%;
            font-size: 14px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar li {
            margin-bottom: 12px;
        }
        .sidebar .menu-category {
            font-weight: bold;
            color: #555;
            margin-top: 15px;
            margin-bottom: 5px;
        }
        .sidebar a {
            color: #0d6efd;
            text-decoration: underline;
            padding-left: 10px;
            display: inline-block;
        }

        /* 右側コンテンツエリア */
        .content {
            width: 78%;
        }

        /* ① 学生管理の見出し */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 10px;
        }

        /* ⑧ 新規登録リンク */
        .register-link {
            text-align: right;
            margin-bottom: 15px;
        }
        .register-link a {
            color: #0d6efd;
            text-decoration: underline;
            font-size: 14px;
        }

        /* 検索フォームエリア */
        .search-box {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 25px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }
        .search-form {
            display: flex;
            align-items: flex-end;
            gap: 20px;
            flex-wrap: wrap;
        }
        .search-group {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .search-group label {
            font-size: 13px;
            color: #666;
            font-weight: bold;
        }
        .search-select {
            width: 160px;
            padding: 6px 10px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            background-color: #fff;
        }
        
        /* ⑥⑦ 在学中チェックボックス */
        .search-check {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 13px;
            color: #666;
            padding-bottom: 8px;
        }
        .search-check input {
            width: 16px;
            height: 16px;
            margin: 0;
        }

        /* ⑨ 絞込みボタン */
        .btn-search {
            background-color: #555555; /* 画像に合わせた濃いめのグレー/黒 */
            color: white;
            border: none;
            padding: 7px 18px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        .btn-search:hover {
            background-color: #444444;
        }

        /* ⑩ 検索結果件数 */
        .result-count {
            font-size: 14px;
            color: #333;
            margin-bottom: 10px;
            font-weight: 500;
        }

        /* ⑪ 一覧テーブルスタイル */
        .result-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            margin-top: 10px;
        }
        .result-table th {
            border-bottom: 2px solid #333;
            padding: 10px 8px;
            text-align: left;
            font-weight: bold;
        }
        .result-table td {
            border-bottom: 1px solid #e0e0e0;
            padding: 12px 8px;
            color: #333;
        }
        /* 変更リンク */
        .result-table a {
            color: #0d6efd;
            text-decoration: underline;
        }

        /* ㉓ エラー・データなしメッセージ */
        .error-message {
            color: #333;
            font-size: 14px;
            margin-top: 15px;
        }

        /* フッター */
        footer {
            background-color: #e2e2e2;
            text-align: center;
            padding: 15px 0;
            font-size: 12px;
            color: #666666;
            width: 100%;
            margin-top: auto;
        }
    </style>
</head>
<body>

	<%-- 💡 1. 外からヘッダーを取ってくる --%>
	<%@ include file="header.jsp" %>

    <div class="main-wrapper">
        
        <nav class="sidebar">
            <ul>
                <li><a href="Menu.action">メニュー</a></li>
                <li><a href="StudentList.action">学生管理</a></li>
                <li class="menu-category">成績管理</li>
                <li><a href="ScoreRegist.action">成績登録</a></li>
                <li><a href="ScoreList.action">成績参照</a></li>
                <li><a href="SubjectList.action">科目管理</a></li>
            </ul>
        </nav>

        <div class="content">
            <div class="title-bar">学生管理</div>

            <div class="register-link">
                <a href="StudentCreate.action">新規登録</a>
            </div>

            <div class="search-box">
                <form action="StudentList.action" method="get" class="search-form">
                    <div class="search-group">
                        <label>入学年度</label>
                        <select name="f1" class="search-select">
                            <option value="">--------</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                        </select>
                    </div>

                    <div class="search-group">
                        <label>クラス</label>
                        <select name="f2" class="search-select">
                            <option value="">--------</option>
                            <option value="201">201</option>
                            <option value="202">202</option>
                            <option value="203">203</option>
                        </select>
                    </div>

                    <div class="search-check">
                        <input type="checkbox" id="f3" name="f3" value="true" checked>
                        <label for="f3">在学中</label>
                    </div>

                    <button type="submit" class="btn-search">絞込み</button>
                </form>
            </div>

            <%-- 
               Javaのサーブレット側から渡されるリスト（例: students）の状態によって
               「一覧表示（⑪）」と「データなしメッセージ（㉓）」を切り替えます。
               ※現在は動作確認用に、必ずデータがある体（true）にしています。
               ※本番時は <c:choose> を有効にしてください。
            --%>
            <c:choose>
                <%-- パターンA：学生情報が存在するとき --%>
                <c:when test="${true}"> <%-- 本番は test="${not empty students}" のようにします --%>
                    
                    <div class="result-count">検索結果：39件</div>

                    <table class="result-table">
                        <thead>
                            <tr>
                                <th style="width: 15%;">入学年度 ⑫</th>
                                <th style="width: 20%;">学生番号 ⑬</th>
                                <th style="width: 25%;">氏名 ⑭</th>
                                <th style="width: 15%;">クラス ⑮</th>
                                <th style="width: 13%;">在学中 ⑯</th>
                                <th style="width: 12%;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2021 ⑰</td>
                                <td>2125001 ⑱</td>
                                <td>大原 一郎 ⑲</td>
                                <td>201 ⑳</td>
                                <td>〇 ㉑</td>
                                <td><a href="StudentUpdate.action?no=2125001">変更 ㉒</a></td>
                            </tr>
                            <tr>
                                <td>2021</td>
                                <td>2125002</td>
                                <td>大原 花子</td>
                                <td>201</td>
                                <td>〇</td>
                                <td><a href="StudentUpdate.action?no=2125002">変更</a></td>
                            </tr>
                            <tr>
                                <td>2021</td>
                                <td>2125024</td>
                                <td>大原 五郎</td>
                                <td>202</td>
                                <td>×</td>
                                <td><a href="StudentUpdate.action?no=2125024">変更</a></td>
                            </tr>
                            </tbody>
                    </table>
                </c:when>

                <%-- パターンB：絞り込み条件に該当する学生情報がない時 --%>
                <c:otherwise>
                    <div class="error-message">学生情報が存在しませんでした</div>
                </c:otherwise>
            </c:choose>

        </div>
    </div>

<%-- 💡 2. 外からフッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>