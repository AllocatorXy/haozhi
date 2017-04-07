/**
* header Module
*
* common navbar
*/
angular.module('header', [])
       .controller('h-ctrl', ($scope, $http) => {
          $http.get('/get?thing=navbar')
               .then(r => {
                if (!r.data.err) {
                  $scope.dataset = r.data.data;
                }
               }, r => {
                console.log('ajax failed: ' + r);
               });
       });
