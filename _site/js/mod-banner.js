/**
* banner Module
*
* index banner load
*/
angular.module('banner', [])
       .controller('bn-ctrl', ($scope, $http) => {
          $http.get('/get?thing=banner')
               .then(r => {
                if (!r.data.err) {
                  $scope.dataset = r.data.data;
                }
               }, r => {
                console.log('ajax failed: ' + r);
               });
       });
