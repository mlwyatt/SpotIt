$(document).ready(function() {
  $('.js--number-of-words').on('change',function() {
    var nums = $(this).find(':selected').data('numbers');
    $('.js--word').hide();
    $.each(nums, function(n) {
      $('.js--word-'+n).show();
    });
  }).trigger('change');
});