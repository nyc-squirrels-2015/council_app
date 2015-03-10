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

  var InfiniteRotator =
    {
        init: function()
        {
            //initial fade-in time (in milliseconds)
            var initialFadeIn = 1000;

            //interval between items (in milliseconds)
            var itemInterval = 5000;

            //cross-fade time (in milliseconds)
            var fadeTime = 2500;

            //count number of items
            var numberOfItems = $('.rotating-item').length;

            //set current item
            var currentItem = 0;

            //show first item
            $('.rotating-item').eq(currentItem).fadeIn(initialFadeIn);

            //loop through the items
            var infiniteLoop = setInterval(function(){
                $('.rotating-item').eq(currentItem).fadeOut(fadeTime);

                if(currentItem == numberOfItems -1){
                    currentItem = 0;
                }else{
                    currentItem++;
                }
                $('.rotating-item').eq(currentItem).fadeIn(fadeTime);

            }, itemInterval);
        }
    };

    InfiniteRotator.init();

  $('button#login-btn').on('click', function(event){
    event.preventDefault();
    $('#login-form').toggle();
    $('#welcome-text').hide();
    $('#sign-up-form').hide();
    $('button#login-btn').hide();
    $('button#sign-up-btn').hide();
  });

  $('button#sign-up-btn').on('click', function(event){
    event.preventDefault();
    $('#sign-up-form').toggle();
    $('#welcome-text').hide();
    $('#login-form').hide();
    $('button#login-btn').hide();
    $('button#sign-up-btn').hide();
  });

  function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
            $('#blah').css("display", "block");
        }

        reader.readAsDataURL(input.files[0]);
    }
  }

  $("#question_image").change(function(){
      readURL(this);
  });
});