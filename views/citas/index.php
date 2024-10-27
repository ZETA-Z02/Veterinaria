<?php require 'views/header.php';?>
<script src="<?php echo constant('URL')?>node_modules/fullcalendar/index.global.min.js"></script>
<div class="grid-container fluid">
    <div class="grid-x align-center">
        <h1>Citas</h1>
    </div>
    <div class="cell">
        <div class="calendar" id="calendar"></div>
    </div>
</div>

<script src="<?php echo constant('URL')?>public/js/citas.js"></script>
<?php require 'views/footer.php';?>