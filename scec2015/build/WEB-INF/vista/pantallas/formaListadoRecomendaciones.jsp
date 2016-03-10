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
 table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}
 
tr:nth-child(even){

    background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}

</style>
<script language="javascript" type="text/javascript">
<!--
  function EliminarRecomendacion(strRecomendacionName){
    alert("eliminando");
    return confirm("Desea eliminar la recomendación '" + strRecomendacionName + "'?")
  }
-->
</script>
    <br>
    <font size='5'><fmt:message key="formaListadoRecomendaciones.etiqueta.titulo" /></font>
    <table cellpadding="0" cellspacing="0" width="60%" border="0">

            <td colspan="4" style="padding-top:25px; padding-bottom:25px;">
                <a href="solicitarRegistroRecomendacion.do" class="HipervinculoAdmon">Agregar nueva Recomen...</a>
            </td>

         <tr cellpadding="0" cellspacing="0" width="60%" border="3" bgcolor="#CCCCCC" style=" background-color:#4CAF50; color:#fff;">
         <td><b><fmt:message key="formaListadoRecomendaciones.etiqueta.usuario" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b>
         <fmt:message key="formaListadoRecomendaciones.etiqueta.fechahora" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b>
         <fmt:message key="formaListadoRecomendaciones.etiqueta.comentario" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b>
         <fmt:message key="formaListadoRecomendaciones.etiqueta.calificacion" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b>
         <fmt:message key="formaListadoRecomendaciones.etiqueta.lugar" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b>
         <fmt:message key="formaListadoRecomendaciones.etiqueta.nombre" /></b>

         <b><td><b><fmt:message key="formaListadoRecomendaciones.etiqueta.administracion" /></b></td>
        </tr>
        <c:forEach var="recomendaciones" items="${formaListadoRecomendaciones.recomendaciones}">
            <tr>
                <td align="left" width="20%"><c:out value="${recomendaciones.usuario}"/></td>
                <td align="left" width="60%"><c:out value="${recomendaciones.fechahora}"/></td>
                <td align="left" width="60%"><c:out value="${recomendaciones.comentario}"/></td>
                <td align="left" width="60%"><c:out value="${recomendaciones.calificacion}"/></td>
                <td align="left" width="60%"><c:out value="${recomendaciones.lugar}"/></td>
                <td align="left" width="20%"><c:out value="${recomendaciones.nombre}"/></td>
                <td align="left" width="20%">

                   <a href='solicitarModificarRecomendacion.do?id=<c:out value="${recomendaciones.id}"/>'
					         class="HipervinculoAdmon">
                        <fmt:message key="formaListadoRecomendaciones.etiqueta.modificar"/>
                    </a>
                </td>
                <td>
                    <a href='procesarEliminarRecomendacion.do?id=<c:out value="${recomendaciones.id}"/>'
					          onClick="javascript: return EliminarRecomendacion('<c:out value="${recomendaciones.nombre} "/>')"
					          class="HipervinculoAdmon" >
                        <fmt:message key="formaListadoRecomendaciones.etiqueta.eliminar" />
                    </a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="4" align="right" style="padding-top:25px;"><b>Total:</b> ${formaListadoRecomendaciones.contador}</td>
        </tr>
    </table>
