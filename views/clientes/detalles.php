<?php require 'views/header.php';?>
<div class="grid-container fluid">
    <div class="grid-x align-center">
        <h1>Cliente : <?php echo $this->data['nombre'];?></h1>
    </div>
    <div class="grid-x">
        <div class="cell callout shadow">
            <form action="<?php echo constant('URL')?>personal/update" class="grid-x grid-margin-x form" id="update-personal" method="POST">
                <input type="text" name="id" id="id" value="<?php echo $this->data['idcliente'];?>" hidden style="display:none;"/>
                <div class="cell large-6 medium-12">
                    <label for="nombre">Nombres: </label>
                    <input type="text" name="nombre" id="nombre" value="<?php echo $this->data['nombre'];?>" readonly>
                </div>
                <div class="cell large-6 medium-12">
                    <label for="apellidos">Apellidos: </label>
                    <input type="text" name="apellidos" id="apellidos" value="<?php echo $this->data['apellido'];?>" readonly>
                </div>
                <div class="cell large-6 medium-12">
                    <label for="dni">DNI: </label>
                    <input type="text" name="dni" id="dni" value="<?php echo $this->data['dni'];?>" readonly>
                </div>
                <div class="cell large-6 medium-12">
                    <label for="telefono">Telefono: </label>
                    <input type="text" name="telefono" id="telefono" value="<?php echo $this->data['telefono'];?>">
                </div>
            </form>
        </div>
    </div>
    <div class="grid-x">
        <div class="cell">
            <h3>Mascotas</h3>
        </div>
        <div class="cell">
            <table class="table-style">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Especie</th>
                        <th>Raza</th>
                    </tr>
                </thead>
                <tbody id="mascotas">
                    <tr>
                        <td>Lazy</td>
                        <td>Perro</td>
                        <td>Pastor Aleman</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
    <div class="grid-x">
        <a href="<?php echo constant('URL')?>clientes" class="button">Volver</a>
    </div>
</div>
<script src="<?php echo constant('URL')?>public/js/clientes.js"></script>
<?php require 'views/footer.php';?>