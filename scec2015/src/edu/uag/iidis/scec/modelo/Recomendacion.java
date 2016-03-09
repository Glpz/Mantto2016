package edu.uag.iidis.scec.modelo;

import java.io.Serializable;
import java.util.*;


/**
 * Esta clase es usada para representar un rol de un
 * usuario.
 *
 * <p><a href="Recomendacion.java.html"><i>Ver codigo fuente</i></a></p>
 *
 * @author <a href="mailto:vramos@uag.mx">Victor Ramos</a>
 * @version 1.0
 */
public class Recomendacion extends ClaseBase
        implements Serializable {

    private Long id;
    private String usuario;
    private String fechahora;
    private String comentario;
    private double calificacion;
    private String lugar;
    private String nombre;

    public Recomendacion() {
    }

    public Recomendacion(Long id){
        this.id = id;
    }

    public Recomendacion( String usuario, String fechahora, String comentario, double calificacion, String lugar, String nombre){
        this.usuario=usuario;
        this.fechahora=fechahora;
        this.comentario=comentario;
        this.calificacion=calificacion;
        this.lugar=lugar;
        this.nombre=nombre;
    }

    /**
     * Regresa el id del rol.
     * @return Long
     */
    public Long getId() {
        return this.id;
    }

    /**
     * Establece el id del lugar.
     * @return void
     */
    public void setId(Long id) {
        this.id = id;
    }


    /**
     * Regresa el nombre del lugar.
     * @return String
     */
    public String getNombre() {
        return this.nombre;
    }

    /**
     * Establece el nombre del lugar.
     * @return void
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Regresa la fechahora del lugar.
     * @return String
     */
    public String getFechahora() {
        return this.fechahora;
    }

    /**
     * Establece la fechahora del lugar.
     * @return void
     */
    public void setFechahora(String fechahora) {
        this.fechahora = fechahora;
    }

    /*
    *Regresa la comentario del lugar
    *@return Long
    */
    public String getComentario(){
      return this.comentario;
    }

    /*
    *Establece la comentario del lugar
    *@return void
    */
    public void setComentario(String comentario){
      this.comentario = comentario;
    }

    /*
    *Regresa las calificacion del lugar
    *@return String
    */

    public double getCalificacion(){
      return this.calificacion;
    }

    /*
    *Establece las calificacion del lugar
    *@return void
    */
    public void setCalificacion(double calificacion){
      this.calificacion = calificacion;
    }

    /*
    *Regresa el lugar del lugar
    *@return String
    */
    public String getLugar(){
      return this.lugar;
    }

    /*
    *Establece el lugar del lugar
    *@return void
    */
    public void setLugar(String lugar){
      this.lugar = lugar;
    }
    public String getUsuario(){
      return this.usuario;
    }

    /*
    *Establece el lugar del lugar
    *@return void
    */
    public void setUsuario(String usuario){
      this.usuario = usuario;
    }
}
