$(document).ready(function () {
  get();
  barras();
});
function get() {
  $.ajax({
    type: "POST",
    url: `http://localhost/veterinaria/dashboard/get`,
    dataType: "json",
    success: function (response) {
      console.log(response);
      let html = "";
      response.forEach((element) => {
        html += `
                    <tr>
                        <td>${element.nombres}</td>
                        <td>${element.mascota}</td>
                        <td>${element.especie}</td>
                        <td>${element.raza}</td>
                        <td>${element.hora}</td>
                    </tr>
                `;
      });
      $("#citas").html(html);
    },
    error: function (error) {
      console.log("error GET" + error);
    },
  });
}

function barras() {
  let ctx = document.getElementById("barras");
  $.ajax({
    type: "GET",
    url: `http://localhost/veterinaria/dashboard/chart`,
    dataType: "json",
    success: function (response) {
      console.log(response);
      new Chart(ctx, {
        type: "bar",
        data: {
          labels: response.labels,
          datasets: response.dataset,
        },
        options: { scales: { y: { beginAtZero: true } } },
      });
    },
    error: function (error) {
      console.log("ERROR GET" + error);
    },
  });
}
