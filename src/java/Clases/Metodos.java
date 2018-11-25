package Clases;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Alumno
 */
public class Metodos {
    




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    /**
     *
     * @return
     */


    public static Connection getConnection(){
        String url, username, password;
        url = "jdbc:mysql://localhost/promodb";
        username="root";
        password="n0m3l0";
        
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://localhost/promodb";
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Si se conectó a la base de datos");
        }catch(Exception e){
            System.out.println("No conectó a la base de datos");
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
    
    
    
    public static int GuardarUsuario(Usuario e){
        int estatus = 0;
        
        try{
            Connection con = getConnection();
                    String q = "insert into usuarios (nom_usu, pass_usu, Mail_usu, id_rol, Curp_usu, id_proy) "
                            + "values (?, AES_ENCRYPT(?,'passwordsegura'), AES_ENCRYPT(?,'passwordsegura'), ?, ?,1)";
                    
            
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, e.getNom());
            ps.setString(2, e.getPass());
            ps.setString(3, e.getMail());
            ps.setInt(4, e.getRol());
            ps.setString(5, e.getCurp());
            estatus = ps.executeUpdate();
            con.close();
        }catch(Exception d){
            System.out.println("No guardo usuario");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return estatus;
    }
    
    public static Usuario verificarUsuario(String Mail_Usu, String Pass_Usu){
        Usuario e = new Usuario();
        
        try{
            Connection con = getConnection();
            String q = "select id_usu, nom_usu, id_rol, curp_usu|, AES_DECRYPT(Mail_usu,'passwordsegura') as Mail_usu, AES_DECRYPT(pass_usu, 'passwordsegura') as pass_usu from usuarios where Mail_usu = AES_ENCRYPT(?, 'passwordsegura') and pass_usu=AES_ENCRYPT(?, 'passwordsegura')";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, Mail_Usu);
            ps.setString(2, Pass_Usu);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                e.setId(rs.getInt("id_usu"));
                e.setNom(rs.getString("nom_usu"));
                e.setCurp(rs.getString("CURP_usu"));     
                e.setMail(rs.getString("Mail_usu"));
                e.setPass(rs.getString("pass_usu"));
                e.setRol(rs.getInt("Id_Rol"));
            }
            con.close();
        }catch(Exception d){
            System.out.println("No ejecutó la sentencia");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return e;
        
    }
    
    public static Usuario datosUsuario(String Mail_usu){
        Usuario e = new Usuario();
        
        try{
            Connection con = getConnection();
            String q = "select * from usuarios where Mail_usu = AES_ENCRYPT('"+Mail_usu+"', 'passwordsegura')";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                e.setId(rs.getInt("Id_Usu"));
                e.setNom(rs.getString("nom_Usu"));
                System.out.println(rs.getString("nom_Usu"));
                e.setCurp(rs.getString("CURP_Usu"));
                e.setMail(rs.getString("Mail_Usu"));
                e.setPass(rs.getString("Pass_Usu"));
                e.setRol(rs.getInt("Id_Rol"));
                e.setProy(rs.getInt("Id_Proy"));
                
            }
            con.close();
        }catch(Exception d){
            System.out.println("No ejecutó la sentencia");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return e;
    }
    
    public static Usuario consultaUsuarios(){
        Usuario e = new Usuario();
        
        try{
            Connection con = getConnection();
            String q = "select * from usuarios";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                e.setId(rs.getInt("id_usu"));
                e.setNom(rs.getString("nom_usu"));
                e.setCurp(rs.getString("Curp_usu"));                
                e.setMail(rs.getString("Mail_usu"));
                e.setPass(rs.getString("pass_usu"));
                e.setRol(rs.getInt("id_rol"));
            }
            con.close();
        }catch(Exception d){
            System.out.println("No ejecutó la sentencia");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return e;
        
    }
    
    
  
    
}
