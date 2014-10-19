var phonecatServices = angular.module('phonecatServices', ['ngResource']);

phonecatServices.factory('Phone', ['$resource',
  function($resource){
    return $resource('/api/phones/:id', {}, {
      query: {method:'GET', params:{id:'@id'}, isArray:true}
    });
  }]);
