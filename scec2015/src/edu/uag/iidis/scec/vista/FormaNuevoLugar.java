package edu.uag.iidis.scec.vista;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;


/**
 * Form bean para el registro de un nuevo Lugar
 *
 * @author Victor Ramos
 */
public final class FormaNuevoLugar
        extends ValidatorForm {

    private String nombre;
    private String descripcion;
    private String poblacion;
    private String coordenadas;
    private String estado;

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getNombre() {
        return (this.nombre);
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getDescripcion() {
        return (this.descripcion);
    }
    public void setPoblacion(String poblacion){
      this.poblacion=poblacion;
    }
    public String getPoblacion(){
      return (this.poblacion);
    }
    public void setCoordenadas(String coordenadas){
      this.coordenadas=coordenadas;
    }
    public String getCoordenadas(){
      return (this.coordenadas);
    }
    public void setEstado(String estado){
      this.estado = estado;
    }
    public String getEstado(){
      return (this.estado);
    }



    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {
        nombre=null;
        descripcion=null;
        poblacion=null;
        coordenadas=null;
        estado=null;
    }


    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        // Ejecuta las validaciones proporcionadas por Struts-Validator
        ActionErrors errores = super.validate(mapping, request);

        // Validaciones no cubiertas por Struts-Validator

        return errores;

    }

}
