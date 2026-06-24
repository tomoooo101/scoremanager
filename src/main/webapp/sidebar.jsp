<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    /* 📂 共通サイドメニューのスタイル */
    .side-menu { 
        width: 18%; 
        min-width: 150px;
        padding-top: 10px;
        box-sizing: border-box;
    }
    .side-menu ul { 
        list-style: none; 
        padding: 0; 
        margin: 0;
    }
    
    /* 💡 すべての項目（成績管理の文字含む）のフォント・サイズ・色を1枚目の画像に完全統一 */
    .side-menu li { 
        margin-bottom: 25px; 
        font-size: 20px; /* 💡 文字の大きさをスクショの標準サイズに統一 */
        font-family: sans-serif;
        color: #0056b3; /* 💡 リンクのない「成績管理」も同じ綺麗な青色に設定 */
    }
    
    /* メニューのリンク設定 */
    .side-menu a { 
        text-decoration: none; 
        color: #0056b3; 
    }
    .side-menu a:hover { 
        text-decoration: underline; 
    }
    
    /* 💡 成績管理の下に入る小メニュー（インデント設定） */
    .side-menu .sub-menu {
        padding-left: 20px;
        margin-top: 15px;
    }
    .side-menu .sub-menu li {
        margin-bottom: 15px;
        font-size: 18px; /* 💡 子メニューも理想の比率に調整 */
    }
</style>

<nav class="side-menu">
    <ul>
        <li><a href="menu.jsp">メニュー</a></li>
        <li><a href="student_list.jsp">学生管理</a></li>
        <li><a herf="subject_list.jsp">成績管理</a></li>
            <ul class="sub-menu">
                <li><a href="subject_create.jsp">成績登録</a></li>
                <li><a href="grade.jsp">成績参照</a></li>
            </ul>
        </li>
        <li><a href="subject_list.jsp">科目管理</a></li>
    </ul>
</nav>