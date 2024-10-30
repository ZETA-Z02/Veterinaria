<?php require 'views/header.php';?>
<div class="grid-container fluid">
    <div class="grid-x align-center">
        <h1>Personal</h1>
    </div>
    <div class="grid-x search-container">
        <div class="cell">
            <h4>Buscador de Personal</h4>
        </div>
        <div class="cell">
            <input type="text" name="search" id="search">
        </div>
    </div>
    <div class="grid-x table">
        <div class="cell">
            <h4>Registro del Personal</h4>
        </div>
        <div class="cell">
            <table class="table-style">
                <thead>
                    <tr>
                        <th>Nombres</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                        <th colspan="2">Acciones</th>
                    </tr>
                </thead>
                <tbody id="tabla-personal">
                    <tr>
                        <td>Nombres del personal</td>
                        <td>9823487632</td>
                        <td>JR. Puno</td>
                        <td>Detalles</td>
                        <td>Login</td>
                    </tr>
                </tbody>
            </table>
            <div class="paginador-personal" id="paginador-personal"></div>
        </div>
        <div class="cell text-center">
            <button class="button warning" id="btn-personal">Nuevo Personal</button>
        </div>
        
    </div>
    <div class="grid-x new" id="new-personal">
        <div class="cell text-center">
            <h4>Registrar Nuevo Personal</h4>
        </div>
        <div class="cell grid-x">
            <form action="" class="grid-x shadow callout" id="form-personal">
                <div class="cell">
                    <label for="dni">DNI: </label>
                    <input type="text" name="dni" id="dni" minlength="8" maxlength="8" require>
                </div>
                <div class="cell">
                    <label for="nombre">Nombres</label>
                    <input type="text" name="nombre" id="nombre" readonly>
                </div>
                <div class="cell">
                    <label for="apellidos">Apellidos</label>
                    <input type="text" name="apellidos" id="apellidos" readonly>
                </div>
                <div class="cell">
                    <label for="telefono">telefono</label>
                    <input type="text" name="telefono" id="telefono" minlength="9" maxlength="9">
                </div>
                <div class="cell">
                    <label for="direccion">direccion</label>
                    <input type="text" name="direccion" id="direccion">
                </div>
            </form>
            <div class="cell grid-x align-spaced">
                <button class="button success" id="next-personal">Siguiente</button>
                <button class="button alert" id="btn-close">Cerrar</button>
            </div>
        </div>
    </div>
    <div class="grid-x align-center new" id="new-login">
        <div class="cell text-center">
            <h4>Crear Login del Personal</h4>
        </div>
        <div class="cell grid-x align-center">
            <form action="" class="grid-x shadow callout" id="form-login">
                <div class="cell">
                    <label for="usuario">Usuario: </label>
                    <input type="text" name="usuario" id="usuario" minlength="3">
                </div>
                <div class="cell">
                    <label for="password">Password</label>
                    <input type="text" name="password" id="password" minlength="3">
                </div>
                <div class="cell text-center">
                    <button class="button success" id="btn-post">Crear Nuevo Personal</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="<?php echo constant('URL')?>public/js/personal.js"></script>
<?php require 'views/footer.php';?>