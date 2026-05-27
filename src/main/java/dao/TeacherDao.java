package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Teacher;

public class TeacherDao {
    private final String URL = "jdbc:postgresql://localhost:5432/kadai";
    private final String USER = "postgres";
    private final String PASSWORD = "password"; // ★ご自身のパスワードに変更

    public Teacher login(String id, String password) {
        Teacher teacher = null;
        String sql = "SELECT * FROM 教員 WHERE 教員ID = ? AND パスワード = ?";

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }

        try (
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            PreparedStatement pStmt = conn.prepareStatement(sql)
        ) {
            pStmt.setString(1, id);
            pStmt.setString(2, password);

            try (ResultSet rs = pStmt.executeQuery()) {
                if (rs.next()) {
                    teacher = new Teacher();
                    teacher.setId(rs.getString("教員ID"));
                    teacher.setPassword(rs.getString("パスワード"));
                    teacher.setName(rs.getString("氏名"));
                    teacher.setSchoolCode(rs.getString("学校コード"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return teacher;
    }
}