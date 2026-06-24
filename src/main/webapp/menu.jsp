<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - メニュー</title>
    <style>
        /* 全体の初期化 */
        body { 
            font-family: sans-serif; 
            margin: 0; 
            background-color: #fff; 
            color: #333;
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
        
        /* 💡 「メニュー」という見出し枠（グレーの背景枠にして統一） */
        .title-bar {
            background-color: #f0f0f0;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 4px;
            margin-bottom: 30px;
        }

        /* パネルを横並びにするエリア */
        .panel-container { 
            display: flex; 
            gap: 30px; 
            flex-wrap: wrap;
        }

        /* 大きなメニューボタン（共通設定） */
        .menu-panel { 
            width: 200px; 
            height: 120px; 
            display: flex; 
            flex-direction: column; 
            justify-content: center; 
            align-items: center; 
            text-decoration: none; 
            border-radius: 4px; 
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
        }
        .menu-panel:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 10px rgba(0,0,0,0.15);
        }

        /* 学生管理パネル（赤・ピンク系） */
        .panel-student {
            background-color: #f2dede;
            border: 1px solid #ebccd1;
            color: #a94442;
            font-size: 18px;
            font-weight: bold;
        }

        /* 成績管理パネル（緑系） */
        .panel-score {
            background-color: #dff0d8;
            border: 1px solid #d6e9c6;
            color: #3c763d;
        }
        .panel-score .main-label {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .panel-score .sub-label {
            font-size: 14px;
            font-weight: normal;
            line-height: 1.4;
        }

        /* 科目管理パネル（紫系） */
        .panel-subject {
            background-color: #e4e0f0;
            border: 1px solid #d2caec;
            color: #554488;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%-- 💡 1. 外からヘッダーを取ってくる --%>
<%@ include file="header.jsp" %>

    <%-- 💡 2. 枠組みを共通の「main-wrapper」に変更 --%>
    <div class="main-wrapper">
        
        <%-- 💡 3. 外からサイドバーを取ってくる（古いサイドバーHTMLと壊れたCSSは完全に消去しました） --%>
        <%@ include file="sidebar.jsp" %>

        <%-- 💡 4. 右側エリアを「content」に変更 --%>
        <div class="content">
            <div class="title-bar">メニュー</div>
            
            <div class="panel-container">
                <a href="student_list.jsp" class="menu-panel panel-student">
                    学生管理
                </a>

                <a href="grade.jsp" class="menu-panel panel-score">
                    <span class="main-label">成績管理</span>
                    <span class="sub-label">成績登録<br>成績参照</span>
                </a>

                <a href="subject_list.jsp" class="menu-panel panel-subject">
                    科目管理
                </a>
            </div>
        </div>
    </div>

<%-- 💡 5. 外からフッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>