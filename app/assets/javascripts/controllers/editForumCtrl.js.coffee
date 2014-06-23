@EditForumCtrl = ($scope, $routeParams, forumData, $q, $location) ->
  $scope.data =
    forumData: forumData.data
    currentForum:
      name: "Loading..."

  $scope.data.forumId = $routeParams.forumId

  $scope.formData =
    editForumName: " "
    editforumId: $routeParams.forumId

  $scope.findForumById = ->
    forum = _.findWhere(forumData.data.forums, { id: parseInt($scope.data.forumId)})
    $scope.data.currentForum.name = forum.name
    $scope.formData.editForumName = forum.name

  $scope.editForum = ->
    console.log "Edit Forum"
    forumData.updateForum($scope.formData)
    $scope.returnHome()


  $scope.returnHome = ->
    $location.url '/'

  @deferred = $q.defer()
  @deferred.promise.then($scope.findForumById)
  forumData.loadForums(@deferred)



