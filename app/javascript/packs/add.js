document.addEventListener("turbolinks:load", function () {
  $(function(){
    $('.change-red').on('click',function(){
      $('.container').addClass('red').removeClass('blue yellow green');
    });
    $('.change-blue').on('click',function(){
      $('.container').addClass('blue').removeClass('red yellow green');
    });
    $('.change-yellow').on('click',function(){
      $('.container').addClass('yellow').removeClass('red blue green');
    });
    $('.change-green').on('click',function(){
      $('.container').addClass('green').removeClass('red blue yellow');
    });
    $('.change-white').on('click',function(){
      $('.container').removeClass('red blue yellow green');
    });
  });
});