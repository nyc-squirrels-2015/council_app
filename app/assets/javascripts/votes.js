$( document ).ready(function() {
  console.log("Binding vote swipe");
  $(".vote-swipe").swipe({
    swipe:function(event, direction) {
      console.log('event', event)
      if ('left' === direction) {
        // post to answers

      } else {

      }
      console.log("You swiped " + direction );
      },
    threshold:0
  });
});