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

  // $(".vote-swipe").swipe({

  //   swipe:function(event, direction) {
  //     if ('left' === direction) {
  //       $target = event.target;
  //       $data = $target.dataset;
  //       $data['like'] = false;
  //         // post to answers
  //        $.ajax({
  //           type: 'POST',
  //           url: $data['action'],
  //           data: $data
  //         }).done(function (response) {
  //           console.log('Done!')
  //           $(".vote_thanks").show();

  //         })

  //     }

  //  }
  // });
});