<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>


<br>
<font size='5'><fmt:message key="formaNuevaRecomendacion.titulo" /></font>

<form id="forma" action="procesarRegistroRecomendacion.do" method="post">
    <table>
        <tr>
            <td colspan="2">
               <html:errors />
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.usuario" />
            </td>
            <td align="left">
                <input type="text"
                       name="usuario"
                       size="50"
                       maxlength="100"
                       value="${formaNuevaRecomendacion.usuario}" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.nombre" />
            </td>
            <td align="left">
                <input type="text"
                       name="nombre"
                       size="50"
                       maxlength="100"
                       value="${formaNuevaRecomendacion.nombre}" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.fechahora" />
            </td>
            <td align="left">
                <input type="date"
                       name="fechahora"
                       size="50"
                       maxlength="100"
                       value="${formaNuevaRecomendacion.fechahora}" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.comentario" />
            </td>
            <td align="left">
                <input type="text"
                       name="comentario"
                       size="50"
                       maxlength="100"
                       value="${formaNuevaRecomendacion.comentario}" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.lugar" />
            </td>
            <td align="left">
              <select>
                <c:forEach var="lugares" items="${formaNuevaRecomendacion.lugares}">
                <option value="${lugares.nombre}">${lugares.nombre}</option>
                </c:forEach>
              </select>
                <!--input type="text"
                       name="lugar"
                       size="50"
                       maxlength="100"
                       value="${formaNuevaRecomendacion.lugar}" /-->
            </td>
        </tr>
        <tr>
            <td align="right">
                <fmt:message key="formaNuevaRecomendacion.etiqueta.calificacion" />
            </td>
            <td align="left">
                <select name="calificacion">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
              </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit"
                       name="submit"
                       value="Agregar y terminar"/>
                <input type="submit"
                       name="submit"
                       value="Agregar y volver"
                       onclick="forma.action='procesarRegistroRecomendacion.do?volver=si'"/>
                <input type="button"
                       value="Reset"
                       onclick="location.href='solicitarRegistroRecomendacion.do'" />
                <input type="submit"
                       name="org.apache.struts.taglib.html.CANCEL"
                       value="cancelar"
                       onclick="bCancel=true;">
            </td>
        </tr>

    </table>
</form>
