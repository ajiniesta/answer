angular.module('questionApp', [])
.controller('QuestionController', ['$scope', function($scope) {
	$scope.question = "Is this a question";
	$scope.answers = [{text:'yes',valid:false}, {text:'no',valid:true}];
	$scope.save = function() {
		console.log('Saving....');
	}

	$scope.clear = function() {
		$scope.answers = [];
		$scope.question = "";
	}

}]);