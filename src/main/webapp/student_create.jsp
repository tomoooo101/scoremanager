<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>得点管理システム - 学生情報登録</title>
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
            width: 85%;            /* 💡 スクショの横幅・余白感に合わせた最適な幅 */
            margin: 30px auto 0 auto;
            display: flex;
            gap: 4%;               /* サイドバーとメインコンテンツの隙間 */
            flex: 1;
        }

        /* 右側メインコンテンツエリア */
        .content { 
            width: 78%; 
        }

        /* 💡 見出し枠（スクショのような太字のシンプルな大見出しに調整） */
        .content h2 {
            font-size: 24px;
            font-weight: bold;
            margin-top: 0;
            margin-bottom: 20px;
            color: #000000;
        }

        /* 🔍 フォームエリア（薄いグレーの囲み枠） */
        .form-area { 
            background-color: #f5f5f5; 
            padding: 30px; 
            border-radius: 4px; 
            max-width: 800px; 
        }

        /* 入力項目の各グループ */
        .form-group { 
            margin-bottom: 20px; 
        }
        .form-group label { 
            display: block; 
            margin-bottom: 8px; 
            font-weight: bold; 
            font-size: 14px;
        }

        /* 入力テキストボックス・セレクトボックス */
        input[type="text"], select { 
            width: 100%; 
            padding: 10px; 
            font-size: 14px;
            border: 1px solid #ccc; 
            border-radius: 4px; 
            box-sizing: border-box; 
            background-color: #ffffff;
        }

        /* 登録して終了リンク（ボタン風のデザイン） */
        .btn-black { 
            display: inline-block;
            background-color: #fff; 
            color: #333; 
            padding: 6px 12px; 
            border: 1px solid #ccc; 
            border-radius: 4px; 
            cursor: pointer; 
            text-decoration: none;
            font-size: 14px;
        }
        .btn-black:hover {
            background-color: #eee;
        }

        /* 下部の戻るリンク */
        .back-link-area {
            margin-top: 25px;
        }
        .back-link-area a {
            color: #0066cc;
            text-decoration: underline;
            font-size: 14px;
        }
        .back-link-area a:hover {
            color: #004499;
        }
    </style>
</head>
<body>

<%-- 💡 1. 外から共通ヘッダーを取ってくる（古い直書きスタイルのheaderは消去しました） --%>
<%@ include file="header.jsp" %>

    <%-- 💡 2. 外枠を共通の「main-wrapper」に統一 --%>
    <div class="main-wrapper">

        <%-- 💡 3. 外から新しく作ったサイドバーを取ってくる（これでスクショ通りのメニューになります！） --%>
        <%@ include file="sidebar.jsp" %>

        <%-- 💡 4. 右側エリアを共通の「content」に統一 --%>
        <div class="content">
            <h2>学生情報登録</h2>
            
            <div class="form-area">
                <form action="StudentCreate.action" method="post">
                    <div class="form-group">
                        <label>入学年度</label>
                        <select name="ent_year">
                            <option value="">--------</option>
                            <option value="2026">2026</option>
                            <option value="2025">2025</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>学生番号</label>
                        <input type="text" name="no" placeholder="学生番号を入力してください">
                    </div>
                    <div class="form-group">
                        <label>氏名</label>
                        <input type="text" name="name" placeholder="氏名を入力してください">
                    </div>
                    <div class="form-group">
                        <label>クラス</label>
                        <select name="class_num">
                            <option value="101">101</option>
                            <option value="102">102</option>
                        </select>
                    </div>
                    <div style="margin-top: 20px;">
                       <a href="student_create_fin.jsp" class="btn-black">登録して終了</a>                
                    </div>
                </form>
            </div>
            
            <div class="back-link-area">
                <a href="menu.jsp">戻る</a>
            </div>
        </div>
    </div>

<%-- 💡 5. 外から共通フッターを取ってくる --%>
<%@ include file="footer.jsp" %>

</body>
</html>