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
        }
        
        /* 💡 「科目管理」のライトグレー背景の見出し枠（他画面とスタイルを統一） */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        /* 右上の「新規登録」リンクの位置 */
        .top-links {
            text-align: right;
            margin-bottom: 20px;
        }
        .top-links a {
            font-size: 16px;
            color: #0066cc;
            text-decoration: none;
        }
        .top-links a:hover {
            text-decoration: underline;
        }

        /* 📊 科目一覧テーブル */
        .subject-table {
            width: 100%;
            border-collapse: collapse;
        }
        .subject-table th, .subject-table td {
            padding: 15px 10px;
            text-align: left;
            font-size: 16px;
            border-bottom: 1px solid #e0e0e0;
        }
        .subject-table th {
            font-weight: bold;
            color: #333;
            border-bottom: 2px solid #333; /* ヘッダーの下を少し太くして強調 */
        }
        
        /* テーブル内の「変更」「削除」リンクの幅と位置 */
        .action-cell {
            text-align: center;
            width: 100px;
        }
        .action-link {
            color: #0066cc;
            text-decoration: none;
        }
        .action-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%-- 💡 1. 外から共通ヘッダーを取ってくる（古い直書きの header スタイルは削除しました） --%>
<%@ include file="header.jsp" %>

    <%-- 💡 2. 外枠を共通の「main-wrapper」に統一 --%>
    <div class="main-wrapper">
        
        <%-- 💡 3. 外から共通サイドバーを取ってくる（古いサイドバーHTMLと古いサイドバーCSSは完全消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <%-- 💡 4. 右側エリアを共通の「content」に統一 --%>
        <div class="content">
            <div class="title-bar">科目管理</div>
            
            <div class="top-links">
                <a href="subject_create.jsp">新規登録</a>
            </div>
            
            <table class="subject-table">
                <thead>
                    <tr>
                        <th style="width: 25%;">科目コード</th>
                        <th style="width: 55%;">科目名</th>
                        <th class="action-cell"></th>
                        <th class="action-cell"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="subject" items="${subjects}">
                        <tr>
                            <td>${subject.cd}</td>
                            <td>${subject.name}</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                    </c:forEach>
                    
                    <%-- テスト表示用のダミーデータ（データが空の時のみ表示） --%>
                    <c:if test="${empty subjects}">
                        <tr>
                            <td>1</td>
                            <td>python</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>java</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>基本情報</td>
                            <td class="action-cell"><a href="subject_change.jsp" class="action-link">変更</a></td>
                            <td class="action-cell"><a href="subject_delete.jsp" class="action-link">削除</a></td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>

<%-- 💡 5. 外から共通フッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>