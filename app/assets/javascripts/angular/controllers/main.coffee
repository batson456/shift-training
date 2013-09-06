@app.controller 'mainCtrl', ['$scope', ( $scope ) ->
	$scope.displayArray = [
		'block'
		'inline'
		'inline-block'
		'none',
		'list-item',
		'table'
	]

	$scope.positionArray = [
		'position-static'
		'position-absolute'
		'position-relative'
		'position-fixed'
	]

	$scope.floatClasses = [
		'float-none'
		'float-left'
		'float-right'
	]
]