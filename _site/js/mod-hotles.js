/**
* hotles Module
*
* index hot-lesson load
*/
angular.module('hotles', [])
       .controller('hotles-ctrl', ($scope, $http) => {
          $http.get('/get?thing=hot_lesson')
               .then(r => {
                if (!r.data.err) {
                  $scope.dataset = r.data.data;
                }
               }, r => {
                console.log('ajax failed: ' + r);
               });
       });
