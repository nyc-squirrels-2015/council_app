$( document ).ready(function() {

  $(".vote-swipe").swipe({
    swipe:function(event, direction) {
      if ('right' == direction) {
        console.log("right");
        $('#answer_like').prop('checked', true);
      }
      else if ('left' == direction) {
        console.log("left");
        $('#answer_like').prop('checked', false);
      }
      $('#new_answer').submit();
    }
  });

  $('button#login-btn').on('click', function(event){
    event.preventDefault();
    $('#login-form').show();
    $('#sign-up-form').hide();
  });

  $('button#sign-up-btn').on('click', function(event){
    event.preventDefault();
    $('#sign-up-form').show();
    $('#login-form').hide();
  });
});