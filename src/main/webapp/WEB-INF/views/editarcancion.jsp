<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Editar Canci�n</title>
</head>
<body>
    <h1>Editar Canci�n</h1>

    <form:form method="post" modelAttribute="cancion" action="${pageContext.request.contextPath}/canciones/procesa/editar/${cancion.id}">
        
        <table>
            <tr>
                <td><form:label path="titulo">T�tulo:</form:label></td>
                <td><form:input path="titulo" /></td>
                <td><form:errors path="titulo" cssClass="error" /></td>
            </tr>
            <tr>
                <td><form:label path="artista">Artista:</form:label></td>
                <td><form:input path="artista" /></td>
                <td><form:errors path="artista" cssClass="error" /></td>
            </tr>
            <tr>
                <td><form:label path="album">�lbum:</form:label></td>
                <td><form:input path="album" /></td>
                <td><form:errors path="album" cssClass="error" /></td>
            </tr>
            <tr>
                <td><form:label path="genero">G�nero:</form:label></td>
                <td><form:input path="genero" /></td>
                <td><form:errors path="genero" cssClass="error" /></td>
            </tr>
            <tr>
                <td><form:label path="idioma">Idioma:</form:label></td>
                <td><form:input path="idioma" /></td>
                <td><form:errors path="idioma" cssClass="error" /></td>
            </tr>
        </table>

        <input type="submit" value="Actualizar Canci�n" />
    </form:form>

    <br>
    <a href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>

</body>
</html>

