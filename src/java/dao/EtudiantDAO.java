package dao;

import dao.util.ConnectionFactory;
import model.Etudiant;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EtudiantDAO {

    // CREATE
    public boolean create(Etudiant e) {
        String sql = "INSERT INTO etudiant(nom, prenom, email) VALUES (?, ?, ?)";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, e.getNom());
            ps.setString(2, e.getPrenom());
            ps.setString(3, e.getEmail());

            return ps.executeUpdate() > 0;

        } catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }

    // READ ALL
    public List<Etudiant> getAll() {
        List<Etudiant> list = new ArrayList<>();
        String sql = "SELECT * FROM etudiant";

        try(Connection conn = ConnectionFactory.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql)) {

            while(rs.next()){
                Etudiant e = new Etudiant();
                e.setId(rs.getInt("id"));
                e.setNom(rs.getString("nom"));
                e.setPrenom(rs.getString("prenom"));
                e.setEmail(rs.getString("email"));
                list.add(e);
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }

    // READ ONE
    public Etudiant getById(int id) {
        String sql = "SELECT * FROM etudiant WHERE id=?";
        Etudiant e = null;

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                e = new Etudiant();
                e.setId(rs.getInt("id"));
                e.setNom(rs.getString("nom"));
                e.setPrenom(rs.getString("prenom"));
                e.setEmail(rs.getString("email"));
            }

        } catch(Exception ex){
            ex.printStackTrace();
        }

        return e;
    }

    // UPDATE
    public boolean update(Etudiant e) {
        String sql = "UPDATE etudiant SET nom=?, prenom=?, email=? WHERE id=?";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, e.getNom());
            ps.setString(2, e.getPrenom());
            ps.setString(3, e.getEmail());
            ps.setInt(4, e.getId());

            return ps.executeUpdate() > 0;

        } catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }

    // DELETE
    public boolean delete(int id) {
        String sql = "DELETE FROM etudiant WHERE id=?";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }
}