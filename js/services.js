var lmServices = angular.module("lm.services",[]);

lmServices.factory('mainService', ['$http', mainService]);

function mainService($http){

	var mainService = function() {
		    this.items = [];
		    this.busy = false;
		    this.after = 0;
		  };


	mainService.prototype.fetchMenu = function(){

		if (this.busy) return;
    	this.busy = true;

			return $http({
					method: 'POST',
					url: 'http://food.arizonasys.com/LunchMunch/lunchOrder.php/fetchMenu?startrow='+this.after

		        }).success(function(data) {
		        	console.log("data - ",data.resultObj.productsObj);
		        	console.log("after - ",this.after);
			      var items = data.resultObj.productsObj;
			      for (var i = 0; i < items.length; i++) {
			        this.items.push(items[i]);
			      }
			      this.after = 15 + this.after;
			      this.busy = false;
			    }.bind(this));
	};

	return mainService;
}