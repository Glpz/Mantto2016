package edu.uag.iidis.scec.vista;

import java.util.Collection;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;


/**
 * Form bean hacer un reporte de lugares
 *
 * @author Victor Ramos
 */
public final class FormaReporteLugares
        extends ValidatorForm {

    private Collection lugares;
    private int contador;


    public void setLugares(Collection lugares) {
        this.lugares = lugares;
        if (lugares != null) {
          this.contador = lugares.size();
        } else
          this.contador = -1;
    }

    public Collection getLugares() {
        return (this.lugares);
    }
  
    public int getContador() {
        return (this.contador);
    }


    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {
        contador=0;
        lugares=null;
    }


    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        // Ejecuta las validaciones proporcionadas por Struts-Validator
        ActionErrors errores = super.validate(mapping, request);

        // Validaciones no cubiertas por Struts-Validator

        return errores;

    }

}
