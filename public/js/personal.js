var host = "localhost";
$(document).ready(function () {
    insert();
    dni();
    get();
    search();
    $("#new-personal").hide();
    $("#new-login").hide();
    $("#btn-close").click(function(){
        $("#new-personal").hide();
        $("#new-login").hide();
    });

    $("#btn-personal").click(function(){
        $("#new-personal").show();
    });
    $("#next-personal").click(function () {
        $("#new-personal").hide();
        $("#new-login").show();
    });
});

function insert() {
  $("#btn-post").click(function (event) {
    event.preventDefault();
    let personal = $("#form-personal").serialize();
    let login = $("#form-login").serialize();
    console.log(personal + "&" + login);
    let data = personal + "&" + login;
    $.ajax({
      type: "POST",
      url: `http://${host}/veterinaria/personal/create`,
      data: data,
      success: function (response) {
        console.log(response);
        $("#form-personal").trigger("reset");
        $("#form-login").trigger("reset");
        $("#new-personal").hide();
        $("#new-login").hide();
        get();
      },
      error: function (error) {
        console.log("ERROR POST:" + error);
      },
    });
  });
}
function get(){
    $.ajax({
        type: "GET",
        url: `http://${host}/veterinaria/personal/get`,
        dataType: "json",
        success: function (response) {
            console.log(response);
            let html = '';
            response.forEach((element) => {
                html += `
                <tr>
                    <td>${element.nombre}</td>
                    <td>${element.telefono}</td>
                    <td>${element.direccion}</td>
                    <td><a href="http://${host}/veterinaria/personal/detalles/${element.id}" class="button">Detalles</a></td>
                    <td><a href="http://${host}/veterinaria/personal/login/${element.id}" class="button alert">Login</a></td>
                </tr>
                `;
            });
            $("#tabla-personal").html(html);
            initPaginador(5,"tabla-personal","paginador-personal");
        },error: function (error){
            console.log('success GET'+error);
        }
    });
}

function search(){
  $("#search").on("keyup", function(){
    let value = $(this).val().toLowerCase();
    $("#tabla-personal tr").filter(function(){
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    })
  })
}
function dni() {
  var token = "apis-token-8574.bPsef4wHOYjVwA7bFoDMZqLLrNrAMKiY";
  $("#dni").on("keyup", function () {
    var dni = $("#dni").val();
    //console.log(dni.length);
    if (dni.length == 8) {
      $.ajax({
        url: `http://${host}/veterinaria/personal/dni`,
        type: "POST",
        data: { dni: dni },
        success: function (response) {
          let data = JSON.parse(response);
          if (data == 1) {
            alert("El DNI debe tener 8 dígitos");
          } else {
            //console.log(data);
            $("#nombre").val(data.nombres);
            $("#apellidos").val(
              data.apellidoPaterno + " " + data.apellidoMaterno
            );
            return false;
          }
        },
        error: function (xhr, status, error) {
          console.log(error + "->No se pudo hacer la solicitud a la API");
        },
      });
    } else {
      console.log("no hay dni");
    }
  });
}
