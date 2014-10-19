var phonecatControllers = angular.module('phonecatControllers', []);

phonecatControllers.controller('PhoneListCtrl', ['$scope', 'Phone', function ($scope, Phone) {
  $scope.phones = Phone.query();
  $scope.orderProp = 'age';
}]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', 'Phone', function($scope, $routeParams, Phone) {
  console.log($routeParams);
  $scope.phone = Phone.get({id: $routeParams.id});
}]);
