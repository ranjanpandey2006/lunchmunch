var lmCtrls = angular.module("lm.controllers",[]);
lmCtrls.controller("MainCtrl",['$scope','$location','mainService','$log','$rootScope',mainCtrl]);
lmCtrls.controller("MenuCtrl",['$scope','$location','$log',menuCtrl]);


function mainCtrl($scope,$location,mainService,$log,$rootScope){

    $scope.placeOrder = function(orders,address) {
        console.log("orders - ",orders);
        console.log("address - ",address);
        alert("Hurray, your order has been placed successfully, please keep $ "+$scope.total()+" ready");
        $location.url("/menu");
    }
    $scope.confirm = function(address) {
        if(address != null) {
            $scope.showReview = true;
        }else{
            alert("Please enter address")
        }
        
    }
    $rootScope.invoice = {
        items: []
    };

    $scope.clickOnCartIcon = function(){
        $rootScope.invoice.items = mainService.cartList;
        $rootScope.cartHasElement = mainService.cartHasElement;
    }
    $scope.editQuantity = function(index){
        $rootScope.invoice.items[index].editQty = true;
    }
    $scope.updateQty = function(index,qty){

        $rootScope.invoice.items[index].qty = qty;
        $rootScope.invoice.items[index].editQty = false;
    }
    $scope.checkOutdata = function(){
        $rootScope.invoice.items = mainService.cartList;
        $rootScope.cartHasElement = mainService.cartHasElement;
    }

    $scope.checkOut = function(){
        mainService.cartList = $rootScope.invoice.items;
        mainService.cartHasElement = $rootScope.cartHasElement;
        $location.url("/cart");
    }

    $scope.fetchMenu = function(){
			// console.log("job post",$scope.job);
				var result = mainService.fetchProducts();
			//	console.log("result - ",result);
			
	}

	$scope.lmMenu = new mainService();
	$scope.selectedQty = 1;
	$scope.qtyList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

    $scope.addItem = function(index,name,unitPrice,qty) {

        var checkContains = contains($rootScope.invoice.items,name);

        if (checkContains != -1) {
            $rootScope.invoice.items[checkContains].qty =  $rootScope.invoice.items[checkContains].qty + qty;
        }else{
            $rootScope.invoice.items.push({
                qty: qty,
                name: name,
                editQty: false,
                cost: unitPrice
            });
        }
        $rootScope.cartHasElement = true;
        mainService.cartList = $rootScope.invoice.items;
        mainService.cartHasElement = $rootScope.cartHasElement;
       // console.log(mainService.cartList);
    },

    $scope.removeItem = function(index) {
        $rootScope.invoice.items.splice(index, 1);
        if ($rootScope.invoice.items.length === 0) {
        	$rootScope.cartHasElement = false;
        };
    },

    $scope.total = function() {
        var total = 0;
        angular.forEach($rootScope.invoice.items, function(item) {
            total += item.qty * item.cost;
        })

        return total;
    }

}

function menuCtrl($scope,$location,$log){
	this.tab = 1;
	this.selectTab = function(setTab){
		this.tab = setTab;
	};
	this.isSelected = function(checkTab) {
		var val =  this.tab === checkTab;
	//	$log.info(val+" checkTab  "+checkTab+"  this.tab "+ this.tab);
		return val;
	};
}

function contains(a, obj) {
    var count = -1;
    for (var i = 0; i < a.length; i++) {
        if (a[i].name === obj) {
            count = i;
            return count;
        }
    }
    return count;
}