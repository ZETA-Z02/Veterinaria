<?php require 'views/header.php';?>
<link rel="stylesheet" href="<?php constant("URL");?>public/css/dashboard.css">
<div class="grid-container fluid">

    <div class="grid-x grid-margin-x cards">
        <div class="cell large-4">
            <div class="card text-center shadow">
                <span class="card-info">
                    <i class="fas fa-dog"></i> 23
                </span>
                <div class="card-section">
                    <p class="lead">Animales Atentidos</p>
                </div>
            </div>
        </div>
        <div class="cell large-4">
            <div class="card text-center shadow">
                <span class="card-info">
                    <i class="fas fa-cat"></i> 21
                </span>
                <div class="card-section">
                    <p class="lead">Citas Realizadas</p>
                </div>
            </div>
        </div>
        <div class="cell large-4">
            <div class="card text-center shadow">
                <span class="card-info">
                    <i class="fas fa-dove"></i> 15
                </span>
                <div class="card-section">
                    <p class="lead">Clientes Satisfechos</p>
                </div>
            </div>
        </div>
    </div>
    <div class="grid-x">
        <div class="cell">
            <h2>Citas de hoy: <?php echo date('d-m-Y');?></h2>
        </div>
        <div class="cell">
            <table class="table-style">
                <thead>
                    <tr>
                        <th>Cliente</th>
                        <th>Mascota</th>
                        <th>Especie</th>
                        <th>Raza</th>
                        <th>Hora</th>
                    </tr>
                </thead>
                <tbody id="citas">
                    <tr>
                        <td>Alberto</td>
                        <td>Firulais</td>
                        <td>canino</td>
                        <td>pastor aleman</td>
                        <td>10:00:00</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="cell text-center">
            <a href="<?php echo constant('URL')?>dashboard/imprimir" class="button success" id="button-imprimir">Imprimir Citas</a>
        </div>
        <div class="cell">
            <h4>Citas por Mes</h4>
            <canvas id="barras"></canvas>
        </div>
    </div>
</div>
<script src="<?php echo constant('URL')?>public/js/dashboard.js"></script>
<?php require 'views/footer.php';?>