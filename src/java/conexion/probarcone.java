/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

/**
 *
 * @author NEVADA
 */
public class probarcone {
    public static void main(String[] args) {
        if (conexionprostgres.conectar()!=null) {
            System.out.println("OK :)");
        } else {
            System.out.println("ERROR:)");
        }
    
            }
    
    
}
