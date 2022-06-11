$(document).on('turbolinks:load', function() {

    $('#sidebarCollapse').on('click', function() {
        $('#sidebar, #content').toggleClass('active');
      });
    	$('.card').delay(1800).queue(function(next) {
        $(this).removeClass('hover');
        $('a.hover').removeClass('hover');
        next();
      });
      $('select[id^="edit_"]').on('click', function(){
        var adat = $(this).val();
        var id = $(this).attr('id').replace('edit_','');
        if(adat>0){
           $.ajax({
          url: "/editorka",
          type: "POST",
          data: { product: { id: id, adat: adat} },
          success: function(data) {
            $('tr#'+ id).removeClass('bg-primary');
            $('tr#' + id).addClass(' bg-success ');
          },
          error: function(data) {
            // alert("ERROR" + data.valami);

          }
        })
        }
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
 