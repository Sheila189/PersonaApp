<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menu</title>
    <jsp:include page="templates/head.jsp"></jsp:include>
    <!-- Custom styles for this page -->
    <link href="/css/ingreso.css" rel="stylesheet">
</head>
<body> <!--Cuerpo del menu donde se podra selleccionar si quieres crear o mostrar las personas creadas -->
<div class="container-fluid">
    <div class="row">
        <div class="col align-middle">
            <div class="card position-absolute top-50 start-50 translate-middle" style= "width: 25%;" >
                <div class="card-header" style="text-align: center">Menu</div>
                <img src="${pageContext.request.contextPath}/img/eevee_guapo.jpg" style="margin: 15%">
                    <div class="form-group mb-3">
                        <div class="row">
                            <div class="col">
                                <a href="/views/persona/index.jsp" class="btn btn-warning
                                    btn-sm">Mostrar Personas Registradas</a>
                                <!--Boton para mostrar la lista de personas registradas y de ahi poder seleccionar
                                si queremos editar, crear o eliminar a un registro-->
                            </div>
                            <div class="col">
                                <a href="/views/persona/create.jsp" class="btn btn-warning
                                    btn-sm">Crear Persona</a> <!--Boton para crear persona -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./templates/footer.jsp"></jsp:include>
<script>
    $(document).ready(() => {
        document.getElementById("loaderDiv").style.display = "none";
    });
    feather.replace();
</script>
</body>
</html>