<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canci�n</title>
</head>
<body>
    <h1>Agregar Canci�n</h1>

    <form:form action="${pageContext.request.contextPath}/canciones/procesa/agregar" modelAttribute="cancion" method="post">

        <div>
            <form:label path="titulo">T�tulo:</form:label>
            <form:input path="titulo" />
            <form:errors path="titulo" cssClass="error" />
        </div>

        <div>
            <form:label path="artista">Artista:</form:label>
            <form:input path="artista" />
            <form:errors path="artista" cssClass="error" />
        </div>

        <div>
            <form:label path="album">�lbum:</form:label>
            <form:input path="album" />
            <form:errors path="album" cssClass="error" />
        </div>

        <div>
            <form:label path="genero">G�nero:</form:label>
            <form:input path="genero" />
            <form:errors path="genero" cssClass="error" />
        </div>

        <div>
            <form:label path="idioma">Idioma:</form:label>
            <form:input path="idioma" />
            <form:errors path="idioma" cssClass="error" />
        </div>

        <div>
            <button type="submit">Agregar Canci�n</button>
        </div>

    </form:form>

    <br>
    <a href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>
</body>
</html>
