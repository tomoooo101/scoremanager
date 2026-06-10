<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生情報変更</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background-color:#f5f5f5;
}

.header{
    background:#e9edf4;
    padding:15px;
}

.sidebar{
    min-height:500px;
    border-right:1px solid #ddd;
}

.content{
    padding:20px;
}

.footer{
    background:#ddd;
    text-align:center;
    padding:10px;
    margin-top:30px;
}

.menu-link{
    display:block;
    margin-bottom:10px;
    font-size:14px;
}

.form-title{
    background:#eee;
    padding:8px;
    font-weight:bold;
    margin-bottom:20px;
}
</style>

</head>
<body>

<div class="container">

    <!-- ヘッダー -->
    <div class="header d-flex justify-content-between align-items-center">
        <h2 class="mb-0">得点管理システム</h2>

        <div>
            大原 太郎　
            <a href="logout.jsp">ログアウト</a>
        </div>
    </div>

    <div class="row mt-3">

        <!-- 左メニュー -->
        <div class="col-md-2 sidebar">

            <a href="#" class="menu-link">メニュー</a>
            <a href="#" class="menu-link">学生管理</a>
            <a href="#" class="menu-link">成績管理</a>
            <a href="#" class="menu-link">成績登録</a>
            <a href="#" class="menu-link">成績参照</a>
            <a href="#" class="menu-link">科目管理</a>

        </div>

        <!-- メイン -->
        <div class="col-md-10 content">

            <div class="form-title">
                学生情報変更
            </div>

            <form action="StudentUpdateExecute.action" method="post">

                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label">入学年度</label>
                    <div class="col-sm-4">
                        <span class="form-control-plaintext">2023</span>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label">学生番号</label>
                    <div class="col-sm-4">
                        <span class="form-control-plaintext">123456</span>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label">氏名</label>
                    <div class="col-sm-8">
                        <input type="text"
                               class="form-control"
                               name="name"
                               value="大原次郎">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label">クラス</label>
                    <div class="col-sm-8">
                        <select name="classNum" class="form-select">
                            <option value="201">201</option>
                            <option value="202">202</option>
                            <option value="203">203</option>
                        </select>
                    </div>
                </div>

                <div class="mb-3">
                    <label>
                        <input type="checkbox"
                               name="isAttend"
                               checked>
                        在学中
                    </label>
                </div>

                <button type="submit"
                        class="btn btn-primary">
                    変更
                </button>

            </form>

        </div>

    </div>

    <!-- フッター -->
    <div class="footer">
        © 2023 TIC<br>
        大原学園
    </div>

</div>

</body>
</html>