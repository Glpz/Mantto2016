    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>
<style>
  .HipervinculoAdmon{
    color:#000000;
	text-decoration:none;
  }
  
  .HipervinculoAdmon:hover{
    color:#006666;
	text-decoration:underline;
  }
</style>
<script language="javascript" type="text/javascript">
<!--
  function EliminarRol(strRolName){
    return confirm("¿Desea eliminar el lugar '" + strRolName + "'?")
  }
-->
</script>
    <br>
    <div id="repo"> 
    <font size='5'><fmt:message key="formaReporteLugares.etiqueta.titulo" /></font>
    <table cellpadding="0" cellspacing="0" width="60%" border="0">
        <tr>
            <td colspan="4">
               <html:errors />
            </td>
        </tr>

        <tr bgcolor="#CCCCCC">
         <td><b><fmt:message key="formaReporteLugares.etiqueta.nombre" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaReporteLugares.etiqueta.descripcion" /></b></td>

         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaReporteLugares.etiqueta.estado" /></b></td>

          <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaReporteLugares.etiqueta.poblacion" /></b></td>

           <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaReporteLugares.etiqueta.coordenadas" /></b></td>
        </tr>

        <c:forEach var="lugar" items="${formaReporteLugares.lugares}">
            <tr>
                <td align="left" width="20%"><c:out value="${lugar.nombre}"/></td>
                <td align="left" width="20%"><c:out value="${lugar.descripcion}"/></td>
                <td align="left" width="20%"><c:out value="${lugar.estado}"/></td>
                <td align="left" width="20%"><c:out value="${lugar.poblacion}"/></td>
                <td align="left" width="20%"><c:out value="${lugar.coordenadas}"/></td>




            </tr>
        </c:forEach>
        <tr>
            <td colspan="4" align="right" style="padding-top:25px;"><b>Total:</b> ${formaReporteLugares.contador}</td>
        </tr>
    </table>
    <div>