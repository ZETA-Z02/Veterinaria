var host = '127.0.0.1';
// document.addEventListener("DOMContentLoaded", function () {

// });
$(document).ready(function () {
  var calendarEl = document.getElementById("calendar");
  var calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: "dayGridMonth",
    locale: 'es',
    headerToolbar: {
      center: "dayGridMonth,timeGridWeek,timeGridDay",
    },
    // events: "http://localhost/veterinaria/citas/get",
    eventSources: [
      {
        url: "http://localhost/veterinaria/citas/get",
        method: 'POST'
      }
    ],


    // dateClick: function(info){
    //   //console.log('fecha: '+info.dateStr);
    //   // console.log('fecha: '+info.date);
    //   // console.log('todo el dia '+info.allDay);
    //   // console.log('day El '+info.dayEl);
    //   // console.log('Cordinales: '+info.jsEvent.pageX+','+info.jsEvent.pageY);
    //   // console.log('Current view type: '+info.view.type);
    //   // console.log('Current view: '+info.view);
    //   // console.log('Current view title: '+info.view.title);
    //   // console.log('Current view activeStart: '+info.view.activeStart);
    //   // console.log('Current view activeEnd: '+info.view.activeEnd);
    //   // console.log('Current view currentStart: '+info.view.currentStart);
    //   // console.log('Current view currentEnd: '+info.view.currentEnd);
    //   info.dayEl.style.backgroundColor = 'red';
    // },
  });
  calendar.render();
  entrada(calendar);
  //calendar.next();
});
function entrada(calendar) {
  calendar.on('dateClick', function (infor) {
    calendar.render();
    console.log(infor.dateStr);
  });
}
