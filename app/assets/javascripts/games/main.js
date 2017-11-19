$(document).ready(function() {
  $('.js--number-of-words').on('change',function() {
    var nums = $(this).find(':selected').data('numbers');
    $('.js--word').hide().find('input').prop('disabled',true);
    $.each(nums, function(n) {
      $('.js--word-'+n).show().find('input').prop('disabled',false);
    });
  }).trigger('change');
});