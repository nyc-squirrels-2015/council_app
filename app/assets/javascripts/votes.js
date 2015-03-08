$( document ).ready(function() {
  $(".vote-swipe").swipe({
    swipe:function(event, direction, distance, duration, fingerCount) {
      $(this).text("You swiped " + direction );
      }
    });
  });