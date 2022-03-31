$(document).on('turbolinks:load', function() {

    $('#sidebarCollapse').on('click', function() {
        $('#sidebar, #content').toggleClass('active');
      });
    	$('.card').delay(1800).queue(function(next) {
        $(this).removeClass('hover');
        $('a.hover').removeClass('hover');
        next();
      });
      $('#letoltes_gomb').on('click', function(){
        var adat = $(this).attr('datagame');
        var done = $(this).attr('done');
        $.ajax({
          url: "/download",
          type: "POST",
          data: { product: { id: adat, done: done} },
          success: function(data) {
            //  alert("OK" + data.valami);
          },
          error: function(data) {
            // alert("ERROR" + data.valami);

          }
        })
      });
});
 