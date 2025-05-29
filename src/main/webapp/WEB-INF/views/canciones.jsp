<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista de Canciones</title>
</head>
<body>
    <h1>Canciones</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalle</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${listaCanciones}">

                <tr>
                    <td>${c.titulo}</td>
                    <td>${c.artista}</td>
                    <td><a href="${pageContext.request.contextPath}/canciones/detalle/${c.id}">Detalle</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <a href="${pageContext.request.contextPath}/canciones/formulario/agregar">
        <button>Agregar Canción</button>
    </a>
</body>
</html>

