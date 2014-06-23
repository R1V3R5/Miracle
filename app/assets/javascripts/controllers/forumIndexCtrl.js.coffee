@ForumIndexCtrl = ($scope, $location, $http, forumData, $routeParams) ->
  $scope.title = "Ask Mom's"
  $scope.data = forumData.data
  $scope.searchText = ''

  $scope.viewForum = (forumId) ->
    console.log "view Forum"
    $location.url("/forums/#{forumId}")

  $scope.createNewForum = ->
    $location.url ("/forums/new")

  $scope.formData =
    newForumName: " "

  $scope.createForum = ->
    console.log $scope.formData
    forumData.createForum($scope.formData)
    $scope.returnHome()

  $scope.returnHome = ->
    $location.url "/"
  
  forumData.loadForums(null)