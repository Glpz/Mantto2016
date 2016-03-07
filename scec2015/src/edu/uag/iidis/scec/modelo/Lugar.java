package edu.uag.iidis.scec.modelo;

import java.io.Serializable;
import java.util.*;


/**
 * Esta clase es usada para representar un rol de un
 * usuario.
 *
 * <p><a href="Estado.java.html"><i>Ver codigo fuente</i></a></p>
 *
 * @author <a href="mailto:vramos@uag.mx">Victor Ramos</a>
 * @version 1.0
 */
public class Lugar extends ClaseBase
        implements Serializable {

    private Long id;
    private String nombre;
    private String descripcion;
    private String poblacion;
    private String coordenadas;
    private String estado;


    public Lugar() {
    }

    public Lugar(Long id){
        this.id = id;
    }

    public Lugar(String nombre, String descripcion, String poblacion, String coordenadas, String estado){
        this.nombre=nombre;
        this.descripcion=descripcion;
        this.poblacion=poblacion;
        this.coordenadas=coordenadas;
        this.estado=estado;
    }

    /**
     * Regresa el id del rol.
     * @return Long
     */
    public Long getId() {
        return this.id;
    }

    /**
     * Establece el id del estado.
     * @return void
     */
    public void setId(Long id) {
        this.id = id;
    }


    /**
     * Regresa el nombre del estado.
     * @return String
     */
    public String getNombre() {
        return this.nombre;
    }

    /**
     * Establece el nombre del estado.
     * @return void
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Regresa la descripcion del estado.
     * @return String
     */
    public String getDescripcion() {
        return this.descripcion;
    }

    /**
     * Establece la descripcion del estado.
     * @return void
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /*
    *Regresa la poblacion del lugar
    *@return Long
    */
    public String getPoblacion(){
      return this.poblacion;
    }

    /*
    *Establece la poblacion del lugar
    *@return void
    */
    public void setPoblacion(String poblacion){
      this.poblacion = poblacion;
    }

    /*
    *Regresa las coordenadas del lugar
    *@return String
    */

    public String getCoordenadas(){
      return this.coordenadas;
    }

    /*
    *Establece las coordenadas del lugar
    *@return void
    */
    public void setCoordenadas(String coordenadas){
      this.coordenadas = coordenadas;
    }

    /*
    *Regresa el estado del lugar
    *@return String
    */
    public String getEstado(){
      return this.estado;
    }

    /*
    *Establece el estado del lugar
    *@return void
    */
    public void setEstado(String estado){
      this.estado = estado;
    }
}
