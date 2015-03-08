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
});