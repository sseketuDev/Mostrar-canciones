<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Detalle Canci�n</title>
</head>
<body>
    <h1>Detalle de la Canci�n</h1>

    <p><strong>T�tulo:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>�lbum:</strong> ${cancion.album}</p>
    <p><strong>G�nero:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>

    <a href="${pageContext.request.contextPath}/canciones">Volver</a>
</body>
</html>
