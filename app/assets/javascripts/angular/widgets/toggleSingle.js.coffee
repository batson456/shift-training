app.directive 'toggleSingle', ['$parse', ($parse) ->
	toggleMultipleDefinition =
		restrict : 'EA'
		scope : 
			border : '='
		replace : true
		transclude : true
		template : '<div ng-class="{\'bordered\' : border}" style="text-align:center;padding:5px;"><a class="btn btn-info" style="margin-bottom:20px;" ng-click="toggle()" ng-hide="multiple">Toggle {{classToToggle}} {{state}}</a><div ng-transclude></div></div>'
		controller : ($scope) ->
			#empty controller
		link : (scope, element, attrs) ->
			toggled = if scope.$eval(attrs.toggled) then scope.$eval(attrs.toggled) else false

			if !!attrs.inner then element = angular.element(element.children()[1].childNodes[1])

			#if the controller isn't linked or there is no class to toggle, do nothing else
			if not attrs.toggle then return


			#get the classname(s) to toggle
			scope.classToToggle = attrs.toggle

			#main className toggle function
			scope.toggle = () ->
				if not toggled
					element.addClass(scope.classToToggle)
					scope.state = "(On)"
				else
					element.removeClass(scope.classToToggle)
					scope.state = "(Off)"	

				toggled = !toggled


			attrs.$observe 'toggle', (value) ->
				if value
					toggled = !toggled
					scope.toggle()
]