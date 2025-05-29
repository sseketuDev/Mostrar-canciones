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

    <a href="${pageContext.request.contextPath}/canciones/formulario/editar/${cancion.id}">
        <button>Editar Canci�n</button>
    </a>
    
<form action="/canciones/eliminar/${cancion.id}" method="POST">
    <input type="hidden" name="_method" value="DELETE" />
    <button type="submit">Eliminar</button>
</form>


    <br><br>
    <a href="${pageContext.request.contextPath}/canciones">Volver</a>
</body>
</html>
