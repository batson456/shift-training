app.directive 'toggleMultiple', ['$parse', ($parse) ->
	toggleMultipleDefinition =
		restrict : 'EA'
		scope : 
			border : '='
			classesToToggle : '=toggle'
		replace : true
		transclude : true
		template : '<div ng-class="{\'bordered\' : border}" style="text-align:center;padding:5px;position:relative;"><a class="btn btn-info" ng-click="toggle()" ng-hide="multiple">Toggle {{classToToggle}}</a><div ng-transclude></div></div>'
		link : (scope, element, attrs) ->
			#if the controller isn't linked or there is no class to toggle, do nothing else
			if not attrs.toggle then return

			if !!attrs.inner then element = angular.element(element.children()[1].childNodes[1])

			#get the classname(s) to toggle
			classesToToggle = scope.classesToToggle
			counter = 0

			#main className toggle function
			scope.toggle = () ->
				element.removeClass classesToToggle[counter - 1]
				if not classesToToggle[counter] then counter = 0

				element.addClass classesToToggle[counter]

				counter++
				scope.classToToggle = if classesToToggle[counter] then classesToToggle[counter] else classesToToggle[0]
				


			scope.$watch 'classesToToggle', (value) ->
				scope.toggle()
]