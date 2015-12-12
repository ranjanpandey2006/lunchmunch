var lm = angular.module("lm",['lm.controllers','lm.services','ngRoute','infinite-scroll','ui.bootstrap']).
config(['$routeProvider', function($routeProvider) {
	  $routeProvider.
		when('/home', {
	            templateUrl: 'partials/lmHome.html',
				controller: 'MainCtrl'
			});
		$routeProvider.
		when('/menu', {
	            templateUrl: 'partials/lmMenu.html',
				controller: 'MainCtrl'
			});
		$routeProvider.
		when('/cart', {
	            templateUrl: 'partials/lmCart.html',
				controller: 'MainCtrl'
			});
		$routeProvider.
		when('/addItem', {
	            templateUrl: 'partials/lmAddItem.html',
				controller: 'MainCtrl'
			});
		$routeProvider.
		when('/contact', {
	            templateUrl: 'partials/contact.html',
				controller: 'MainCtrl'
			});
	  $routeProvider.otherwise({redirectTo: '/menu'});
	}]);