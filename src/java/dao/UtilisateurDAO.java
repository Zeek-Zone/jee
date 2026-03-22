package dao;

import dao.util.ConnectionFactory;
import model.Utilisateur;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtilisateurDAO {

    // CREATE
    public boolean register(Utilisateur u) {
        String sql = "INSERT INTO utilisateur(username, password) VALUES (?, ?)";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());

            return ps.executeUpdate() > 0;

        } catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    // LOGIN
    public boolean login(String username, String password) {
        String sql = "SELECT * FROM utilisateur WHERE username=? AND password=?";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            return rs.next();

        } catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    // READ ALL
    public List<Utilisateur> getAll() {
        List<Utilisateur> list = new ArrayList<>();
        String sql = "SELECT * FROM utilisateur";

        try(Connection conn = ConnectionFactory.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql)) {

            while(rs.next()){
                Utilisateur u = new Utilisateur();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                list.add(u);
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }

    // READ ONE
    public Utilisateur getById(int id) {
        String sql = "SELECT * FROM utilisateur WHERE id=?";
        Utilisateur u = null;

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                u = new Utilisateur();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return u;
    }

    // UPDATE
    public boolean update(Utilisateur u) {
        String sql = "UPDATE utilisateur SET username=?, password=? WHERE id=?";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setInt(3, u.getId());

            return ps.executeUpdate() > 0;

        } catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    // DELETE
    public boolean delete(int id) {
        String sql = "DELETE FROM utilisateur WHERE id=?";

        try(Connection conn = ConnectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}