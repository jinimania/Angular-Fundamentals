# Define the Application Controllers Module

myControllers = angular.module 'myControllers', []

# Define the GreetingController Controller
myControllers.controller 'GreetingListController', ['$scope', 'Greeting',
  ($scope, Greeting) -> [
    $scope.greetings = Greeting.query()
    $scope.greetingSort = 'text'
  ]
]

# Define the GreetingDetailController Controller
myControllers.controller 'GreetingDetailController', ['$scope', '$routeParams', 'Greeting',
  ($scope, $routeParams, Greeting) ->
    $scope.greeting = Greeting.get (greetingId: $routeParams.greetingId)
]

# Define the HeaderController Controller
myControllers.controller 'HeaderController', ['$scope',
  ($scope) -> $scope.pageHeading = 'Angular.js Starter Project'
]

# Define the FooterController Controller
myControllers.controller 'FooterController', ['$scope',
  ($scope) -> $scope.currentDateTime = new Date()
]