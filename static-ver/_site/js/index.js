//site-data animation
$('.site-data').addClass('act');
setTimeout(function() {
  $('.site-data').children('a').css({
    transitionDuration: '.3s',
    transitionDelay: '0s'
  });
}, 200);
// carosel of hot-les
$(() => {
  $('#hot-lesson').carousel({
    interval: false
  });
});
// bottom animation
$(window).on('resize scroll load', function() {
  const oB = $('.bottom').offset().top;
  const oS = $(window).scrollTop();
  if (oB - oS < 684) {
    $('.bottom').addClass('act');
  }
  $('.bottom .container').children('a').on('transitionend', function() {
    $(this).css('transitionDelay', '0s');
  });
});

// bannerImgs responsive
$(window).on('resize load', function() {
  const w = $(window).width();
  if (w > 1200) {
    $('#banner .item a').css({
      width: $(window).width(),
      height: 430
    });
  } else if (w > 975) {
    $('#banner .item a').css({
      width: $(window).width(),
      height: 350
    });
  } else if (w > 715) {
    $('#banner .item a').css({
      width: $(window).width(),
      height: 240
    });
  } else if (w > 593) {
    $('#banner .item a').css({
      width: $(window).width(),
      height: 200
    });
  } else {
    $('#banner .item a').css({
      width: $(window).width(),
      height: 150
    });
  }
});
