package com.lab.dao;

import com.lab.bean.SubjectBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {
    
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/lab7_db", "root", "Shan@030904");
    }

    public boolean addSubject(SubjectBean subject) {
        try (Connection conn = getConnection()) {
            String sql = "INSERT INTO registered_subjects (matric_no, subject_code, subject_name) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, subject.getMatricNo());
            ps.setString(2, subject.getSubjectCode());
            ps.setString(3, subject.getSubjectName());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<SubjectBean> getSubjectsByMatric(String matricNo) {
        List<SubjectBean> list = new ArrayList<>();
        try (Connection conn = getConnection()) {
            String sql = "SELECT * FROM registered_subjects WHERE matric_no = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, matricNo);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubjectBean sb = new SubjectBean();
                sb.setId(rs.getInt("id"));
                sb.setMatricNo(rs.getString("matric_no"));
                sb.setSubjectCode(rs.getString("subject_code"));
                sb.setSubjectName(rs.getString("subject_name"));
                list.add(sb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public SubjectBean getSubjectById(int id) {
        SubjectBean sb = null;
        try (Connection conn = getConnection()) {
            String sql = "SELECT * FROM registered_subjects WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                sb = new SubjectBean();
                sb.setId(rs.getInt("id"));
                sb.setMatricNo(rs.getString("matric_no"));
                sb.setSubjectCode(rs.getString("subject_code"));
                sb.setSubjectName(rs.getString("subject_name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb;
    }

    public boolean updateSubject(SubjectBean subject) {
        try (Connection conn = getConnection()) {
            String sql = "UPDATE registered_subjects SET subject_code = ?, subject_name = ? WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, subject.getSubjectCode());
            ps.setString(2, subject.getSubjectName());
            ps.setInt(3, subject.getId());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteSubject(int id) {
        try (Connection conn = getConnection()) {
            String sql = "DELETE FROM registered_subjects WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}