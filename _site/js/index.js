//site-data animation
$('.site-data').addClass('act');
setTimeout(function() {
  $('.site-data').children('a').css({
    transitionDuration: '.3s',
    transitionDelay: '0s'
  });
}, 200);

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

// scroll to top
$('.handle-bar .to-top').on('click', function(event) {
  event.preventDefault();
  if (!$.toTopDone) {
    const tar = event.target;
    $.toTopDone = true;
    $('html, body').stop()
                   .animate({ scrollTop: $($(tar).attr('href')).offset().top }, 'slow', function() {
                      $.toTopDone = false;
                   });
  }
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

// dropdown init
$('.dropdown-toggle, .dropdown-menu').hover(function() {
  $(this).parents(0).addClass('open');
}, function() {
  $(this).parents(0).removeClass('open');
});
$('#hot-lesson').carousel({
  interval: false
});

// popover in prime lesson
$(function () {
  $('[data-toggle="popover"]').popover({
    delay: { show: 200, hide: 300 },
    placement: 'top',
    trigger: 'hover',
    html: 'true',
    title: `<div class="avatar">
              <i class="icon" title="达人" daren="1"></i>
              <img class="img-responsive" src="images/212720870038390860.jpg" alt="" />
            </div>
            <div class="user-info">
              <a href="javascript:;">username</a>
              <p>description</p>
            </div>
            <div class="handler">
              <a class="like" href="javascript:;">关注</a>
              <a class="pm" href="javascript:;">私信</a>
            </div>
            `,
    content: `<p>简介简介简介简介简介介简介简介简介简简介简介简介简介简介简介简介简介</p>
              <ul class="row">
                <li class="col-xs-3"><a href="javascript:;">66<br />在教</a></li>
                <li class="col-xs-3"><a href="javascript:;">66<br />在教</a></li>
                <li class="col-xs-3"><a href="javascript:;">66<br />在教</a></li>
                <li class="col-xs-3"><a href="javascript:;">66<br />在教</a></li>
              </ul>
            `
  }).on('shown.bs.popover', function (event) {
      var that = this;
      $(this).parent().find('div.popover').on('mouseenter', function () {
          $(that).attr('in', true);
      }).on('mouseleave', function () {
          $(that).removeAttr('in');
          $(that).popover('hide');
      });
  }).on('hide.bs.popover', function (event) {
      if ($(this).attr('in')) {
          event.preventDefault();
      }
  });
});
