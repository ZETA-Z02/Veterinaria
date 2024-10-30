<?php require 'views/header.php';?>
<div class="grid-container fluid">
<div class="grid-x align-center">
        <h1>Clientes</h1>
    </div>
    <div class="grid-x search-container">
        <div class="cell">
            <h4>Buscador de Cliente</h4>
        </div>
        <div class="cell">
            <input type="text" name="search" id="search">
        </div>
    </div>
    <div class="grid-x table">
        <div class="cell">
            <h4>Clientes Registrados</h4>
        </div>
        <div class="cell">
            <table class="table-style">
                <thead>
                    <tr>
                        <th>Nombres</th>
                        <th>Telefono</th>
                        <th>Detalles</th>
                    </tr>
                </thead>
                <tbody id="tabla-clientes">
                    <tr>
                        <td>Nombres del personal</td>
                        <td>9823487632</td>
                        <td>JR. Puno</td>
                    </tr>
                </tbody>
            </table>
            <div class="paginador-clientes" id="paginador-clientes"></div>
        </div> 
    </div
</div>
<script src="<?php echo constant('URL')?>public/js/clientes.js"></script>
<?php require 'views/footer.php';?>