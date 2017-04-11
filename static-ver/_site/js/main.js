$(() => {
  // dropdown init
  $('.dropdown-toggle, .dropdown-menu').hover(function() {
    $(this).parents(0).addClass('open');
  }, function() {
    $(this).parents(0).removeClass('open');
  });
  $('.navbar .dropdown:eq(0) a:eq(0)').on('click', function() {
    window.location = 'lessons.html';
  });
  $('.navbar-form .dropdown-menu').on('click', 'a', function() {
    $('.navbar-form .dropdown-toggle').html(`${$(this).html()} <span class="caret"></span>`)
                                      .attr('data-type', $(this).html());
  });

  // scroll to top
  $(window).on('scroll load', function() {
    const oSct = $(window).scrollTop();
    if (oSct >= 100) {
      $('.handle-bar .to-top').show();
    } else {
      $('.handle-bar .to-top').hide();
    }
  });
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
  // toggle menu
  $(function() {
    $(document).on('click', function(e) {
      const oBtn = $('.navbar-toggle')[0];
      const oBar = $('.collapse-bar')[0];
      if (e.target === oBtn) {
        if (!oBar.classList.contains('act')) {
          oBar.classList.add('act');
          oBtn.classList.add('act');
          oBar.style.height = 'auto';
        } else {
          oBar.classList.remove('act');
          oBtn.classList.remove('act');
        }
      } else {
        oBar.classList.remove('act');
        oBtn.classList.remove('act');
      }
    });
  });
});
