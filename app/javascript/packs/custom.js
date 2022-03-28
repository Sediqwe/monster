$(document).on('turbolinks:load', function() {

    $('#sidebarCollapse').on('click', function() {
        $('#sidebar, #content').toggleClass('active');
      });
    	$('.card').delay(1800).queue(function(next) {
        $(this).removeClass('hover');
        $('a.hover').removeClass('hover');
        next();
      });
});
 