var init_stock_lookup;

init_stock_lookup = function(){
   $('#stock-lookup-f').on('ajax:before', function(event, data, status) {
    show_spinner();
   });
      $('#stock-lookup-f').on('ajax:after', function(event, data, status) {
    hide_spinner();
   });
  $('#stock-lookup-f').on('ajax:success', function(event, data,status){
    $('#stock-lookup').replaceWith(data);
    init_stock_lookup();
  });

  $('#stock-lookup-f').on('ajax:error', function(event, xhr, status, error){
    hide_spinner();
    $('#stock-lookup-res').replaceWith(' ');
    $('#stock-lookup-errors').replaceWith('Stock was not found')
  })
}


$(document).ready(function(){
    // alert("Loaded");
  init_stock_lookup();
})