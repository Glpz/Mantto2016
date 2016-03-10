package edu.uag.iidis.scec.vista;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;


/**
 * Form bean para el registro de un nuevo Recomendacion
 *
 * @author Victor Ramos
 */ 
public final class FormaNuevaRecomendacion
        extends ValidatorForm {

      private String usuario;
      private String fechahora;
      private String comentario;
      private double calificacion;
      private Collection lugares;
      private String lugar;
      private String nombre;

      /**
     * Regresa el nombre del recomendacion.
     * @return String
     */
    public String getNombre() {
        return this.nombre;
    }

    /**
     * Establece el nombre del recomendacion.
     * @return void
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * Regresa la fechahora del recomendacion.
     * @return String
     */
    public String getFechahora() {
        return this.fechahora;
    }

    /**
     * Establece la fechahora del recomendacion.
     * @return void
     */
    public void setFechahora(String fechahora) {
        this.fechahora = fechahora;
    }

    /*
    *Regresa la comentario del recomendacion
    *@return Long
    */
    public String getComentario(){
      return this.comentario;
    }

    /*
    *Establece la comentario del recomendacion
    *@return void
    */
    public void setComentario(String comentario){
      this.comentario = comentario;
    }

    /*
    *Regresa las calificacion del recomendacion
    *@return String
    */

    public double getCalificacion(){
      return this.calificacion;
    }

    /*
    *Establece las calificacion del recomendacion
    *@return void
    */
    public void setCalificacion(double calificacion){
      this.calificacion = calificacion;
    }

    /*
    *Regresa el recomendacion del recomendacion
    *@return String
    */
    public Collection getLugares(){
      return this.lugares;
    }

    public void setLugares(Collection lugares){
      this.lugares = lugares;
    }

    public String getLugar(){
      return this.lugar;

    }

    /*
    *Establece el recomendacion del recomendacion
    *@return void
    */
    public void setLugar(String lugar){
      this.lugar = lugar;
    }
    public String getUsuario(){
      return this.usuario;
    }

    /*
    *Establece el recomendacion del recomendacion
    *@return void
    */
    public void setUsuario(String usuario){
      this.usuario = usuario;
    }



    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {
         usuario=null;
         fechahora=null;
         comentario=null;
         calificacion=0;
         lugares = null;
         lugar=null;
         nombre=null;
    }


    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        // Ejecuta las validaciones proporcionadas por Struts-Validator
        ActionErrors errores = super.validate(mapping, request);

        // Validaciones no cubiertas por Struts-Validator

        return errores;

    }

}
