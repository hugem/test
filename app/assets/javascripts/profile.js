$(function() {
  var $form = $('.handle-form');
  $form.on('submit', function(e) {
    e.preventDefault();

    var handle = $(this).find('#handle').val();

    window.location.pathname = '/profiles/' + handle;
  })
})
