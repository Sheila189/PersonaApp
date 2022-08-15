<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar persona</title>
    <jsp:include page="../../templates/head.jsp"/>
</head>
<body>
<jsp:include page="../../templates/navbar.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card mt-5">
                <div class="card-header">REGISTRAR PERSONA</div><!--Formulario para la creacion de la persona en la BD -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <form class="needs-validation" novalidate action="add-persona" method="post">
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="persona">Nombre</label>
                                            <input name="name" id="persona" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                        <div class="col">
                                            <label class="fw-bold" for="surname">Surname</label>
                                            <input name="surname" id="surname" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="curp">CURP</label>
                                            <input name="curp" id="curp" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                        <div class="col">
                                            <label class="fw-bold" for="birthday">Birthday</label>
                                            <input name="birthday" id="birthday" required
                                                   class="form-control" type="date"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12 text-end">
                                            <button type="button" class="btn btn-danger btn-sm">
                                                Cancelar
                                            </button>
                                            <button type="submit" class="btn btn-success btn-sm">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')
        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
<jsp:include page="../../templates/footer.jsp"/>
</body>
</html>
