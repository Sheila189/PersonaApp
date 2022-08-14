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

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col align-middle">
            <div class="card position-absolute top-50 start-50 translate-middle" style= "width: 25%;" >
                <div class="card-header" style="text-align: center">Menu</div>
                <img src="${pageContext.request.contextPath}/img/eevee_guapo.jpg" style="margin: 15%">
                <div class="card-body">
                    <form action="login" method="post" class="needs-validation" novalidate>
                        <button class="btn btn-outline-primary btn-sm col-md-12"
                                type="submit" >Mostrar Personas Registradas
                        </button>
                        <button class="btn btn-outline-primary btn-sm col-md-12"
                                type="submit">Crear Persona
                        </button>
                        <button class="btn btn-outline-primary btn-sm col-md-12"
                                type="submit" >Editar Persona
                        </button>
                        <button class="btn btn-outline-primary btn-sm col-md-12"
                                type="submit" >Elimina Persona
                        </button>
                        <div class="form-group mb-3 text-end" style="text-align: center">
                            <a href="recover-password">¿Olvidaste tu contraseña?</a>
                        </div>
                    </form>
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