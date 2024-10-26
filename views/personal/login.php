<?php require 'views/header.php';?>
<div class="grid-container fluid">
    <div class="grid-x align-center">
        <h1>Usuario : <?php echo $this->data['usuario'];?></h1>
    </div>
    <div class="grid-x">
        <div class="cell callout shadow">
            <form action="<?php echo constant('URL')?>personal/updateLogin" class="grid-x grid-margin-x form" id="update-personal" method="POST">
                <input type="text" name="id" id="id" value="<?php echo $this->data['idpersonal'];?>" hidden style="display:none;"/>
                <div class="cell large-6 medium-12">
                    <label for="usuario">Nombre de usuario: </label>
                    <input type="text" name="usuario" id="usuario" value="<?php echo $this->data['usuario'];?>" >
                </div>
                <div class="cell large-6 medium-12">
                    <label for="password">Constraseña: </label>
                    <input type="text" name="password" id="password" value="<?php echo $this->data['password'];?>" >
                </div>
                <div class="cell large-6 medium-12">
                    <label for="nivel">Nivel de Usuario: </label>
                    <select name="nivel" id="nivel">
                        <option value="1" <?php echo $this->data['nivel'] == 1 ? 'selected' : '';?>>Administrador</option>
                        <option value="0" <?php echo $this->data['nivel'] == 0 ? 'selected' : '';?>>Personal</option>
                    </select>
                </div>
                <div class="cell large-6 medium-12">
                    <label for="estado">Estado del usuario: </label>
                    <select name="estado" id="estado">
                        <option value="1" <?php echo $this->data['estado'] == 1 ? 'selected' : '';?>>Activo</option>
                        <option value="0" <?php echo $this->data['estado'] == 0 ? 'selected' : '';?>>Inactivo</option>
                    </select>
                </div>
                <div class="cell large-6 medium-12 grid-x align-spaced">
                    <button class="button warning" id="btn-update-login">Actualizar Datos</button>
                </div>
            </form>
        </div>
    </div>
    <div class="grid-x">
        <a href="<?php echo constant('URL')?>personal" class="button">Volver</a>
    </div>
</div>
<script src="<?php echo constant('URL')?>public/js/personal.js"></script>
<?php require 'views/footer.php';?>