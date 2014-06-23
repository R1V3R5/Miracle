@NewForumCtrl = ($scope, $location, forumData) ->
  $scope.data = forumData.data
  forumData.loadForums(null)

  $scope.formData =
    newForumName: " "

  $scope.createForum = ->
    console.log $scope.formData
    forumData.createForum($scope.formData)
    $scope.returnHome()

  $scope.returnHome = ->
    $location.url "/"
