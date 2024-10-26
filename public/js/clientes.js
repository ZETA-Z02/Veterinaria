var host = "localhost";
$(document).ready(function () {
    search();
    get();
});
function get(){
    $.ajax({
        type: "GET",
        url: `http://${host}/veterinaria/clientes/get`,
        dataType: "json",
        success: function (response) {
            console.log(response);
            let html = '';
            response.forEach((element) => {
                html += `
                <tr>
                    <td>${element.nombre}</td>
                    <td>${element.telefono}</td>
                    <td><a href="http://${host}/veterinaria/clientes/detalles/${element.id}" class="button">Detalles</a></td>
                </tr>
                `;
            });
            $("#tabla-clientes").html(html);
        },error: function (error){
            console.log('success GET'+error);
        }
    });
}
function search() {
  $("#search").on("keyup", function () {
    let value = $(this).val().toLowerCase();
    $("#tabla-personal tr").filter(function () {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });
}
