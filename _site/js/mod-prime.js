/**
* hotles Module
*
* index hot-lesson load
*/
angular.module('prime', [])
       .controller('prime-ctrl', ($scope, $http) => {
          // get tabs
          $http.get('/page?act=nav&tab=prime')
               .then(r => {
                if (!r.data.err) {
                  $scope.pages = r.data.data;
                }
               }, r => {
                console.log('ajax failed: ' + r);
               });
          /**
           * get one page
           * @param  {num} page 要获取第几页
           * @return {undefined}
           */
          $scope.getPage = (page) => {
            $http.get(`/page?act=cg&tab=prime&p=${page}&c=7`)
                 .then(r => {
                  if (!r.data.err) {
                    $scope.items = r.data.data;
                  }
                 }, r => {
                  console.log('ajax failed: ' + r);
                 });
          };
          $scope.getPage(1);
          /**
           * change page
           * @param  {event obj} e
           * @return {undefined}
           */
          $scope.change = (e) => {
            const tar = e.target;
            if (tar.tagName == 'LI') {
              const p = tar.dataset.id,
                    $ul = $('.prime-lesson .item-list');
              $(tar).addClass('active').siblings().removeClass('active');
              $ul.animate({ opacity: 0 }, 100, function() {
                $ul.animate({ opacity: 1 }, 300);
              });
              $scope.getPage(p);
            }
          };
       });
