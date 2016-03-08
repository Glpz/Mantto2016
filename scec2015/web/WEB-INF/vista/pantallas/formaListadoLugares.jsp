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
  function EliminarLugar(strLugarName){
    alert("eliminando");
    return confirm("Desea eliminar el rol '" + strLugarName + "'?")
  }
-->
</script>
    <br>
    <font size='5'><fmt:message key="formaListadoLugares.titulo" /></font>
    <table cellpadding="0" cellspacing="0" width="60%" border="0">
        <tr>
            <td colspan="4" style="padding-top:25px; padding-bottom:25px;">
                <a href="solicitarRegistroLugar.do" class="HipervinculoAdmon">Agregar nuevo lugar...</a>
            </td>
        </tr>
        <tr>
            <td colspan="4">
               <html:errors />
            </td>
        </tr>
        <tr bgcolor="#CCCCCC">
         <td><b><fmt:message key="formaListadoLugares.etiqueta.nombre" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoLugares.etiqueta.descripcion" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoLugares.etiqueta.poblacion" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoLugares.etiqueta.coordenadas" /></b></td>
         <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoLugares.etiqueta.estado" /></b></td>

         <td colspan="2"><b><fmt:message key="formaListadoLugares.etiqueta.administracion" /></b></td>
        </tr>
        <c:forEach var="lugares" items="${formaListadoLugares.lugares}">
            <tr>
                <td align="left" width="20%"><c:out value="${lugares.nombre}"/></td>
                <td align="left" width="60%"><c:out value="${lugares.descripcion}"/></td>
                <td align="left" width="60%"><c:out value="${lugares.poblacion}"/></td>
                <td align="left" width="60%"><c:out value="${lugares.coordenadas}"/></td>
                <td align="left" width="60%"><c:out value="${lugares.estado}"/></td>
                <td align="left" width="20%">
                    <a href='solicitarModificarLugar.do?id=<c:out value="${lugares.id}"/>'
					   class="HipervinculoAdmon">
                        <fmt:message key="formaListadoLugares.etiqueta.modificar" />
                    </a>
                </td>
                <td>
                    <a href='procesarEliminarLugar.do?id=<c:out value="${lugares.id}"/>'
					   onClick="javascript: return EliminarLugar('<c:out value="${lugares.nombre}"/>')"
					   class="HipervinculoAdmon">
                        <fmt:message key="formaListadoLugares.etiqueta.eliminar" />
                    </a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="4" align="right" style="padding-top:25px;"><b>Total:</b> ${formaListadoLugares.contador}</td>
        </tr>
    </table>
