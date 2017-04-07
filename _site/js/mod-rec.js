/**
* hotles Module
*
* index class-rec load
*/
angular.module('class-rec', [])
       .controller('rec-ctrl', ($scope, $http) => {
          $http.get('/get?thing=rec')
               .then(r => {
                if (!r.data.err) {
                  $scope.units = r.data.data;
                }
               }, r => {
                console.log('ajax failed: ' + r);
               });
       });
