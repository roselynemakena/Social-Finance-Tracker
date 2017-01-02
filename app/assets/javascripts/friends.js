var init_friend_lookup;

init_friend_lookup = function(){
   $('#friend-lookup-f').on('ajax:before', function(event, data, status) {
    show_spinner();
   });
      $('#friend-lookup-f').on('ajax:after', function(event, data, status) {
    hide_spinner();
   });
  $('#friend-lookup-f').on('ajax:success', function(event, data,status){
    $('#friend-lookup').replaceWith(data);
    init_friend_lookup();
  });

  $('#friend-lookup-f').on('ajax:error', function(event, xhr, status, error){
    hide_spinner();
    $('#friend-lookup-res').replaceWith(' ');
    $('#friend-lookup-errors').replaceWith('friend was not found')
  })
}


$(document).ready(function(){
    // alert("Loaded");
  init_friend_lookup();
})