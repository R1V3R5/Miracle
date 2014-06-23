@ForumCtrl = ($scope, $location, $routeParams, forumData, $q) ->
  $scope.data = 
    forumData: forumData.data
    currentForum:
      name: "Loading"
  console.log $routeParams
  $scope.data = forumData.data
  forumData.loadForums(null)

  $scope.formData =
    newCommentName: " "
    newCommentContent: " "
    forumId: $routeParams.forumId
    
  $scope.data.forumId = $routeParams.forumId

  $scope.createComment = ->
    console.log $scope.formData
    forumData.createComment($scope.formData)
    # $scope.returnHome()

  $scope.returnHome = ->
    $location.url "/"

  $scope.data.forumId = $routeParams.forumId
  $scope.title = "Forum"
  $scope.formData =
    newCommentName: " "
    newCommentContent: " "
    forumId: $routeParams.forumId

  $scope.returnHome = ->
    $location.url("/")

  $scope.findForumById = ->
    console.log "current forum"
    forum = _.findWhere(forumData.data.forums, { id: parseInt($scope.data.forumId) })
    $scope.data.currentForum = forum
      

  $scope.editForum = ->
    $location.url("/forums/#{$scope.data.forumId}/edit")

  $scope.deleteForum = ->
    console.log $routeParams
    # $scope.data.forumId =$routeParams.forumId
    forumData.deleteForum($scope.data.forumId)
    $location.url("/")

  # $scope.createNewComment = ->
    # $location.url("/forums/#{$scope.data.forumId}/comments/new")

  $scope.findCommentById = ->
    console.log "Comments found"
    comment = _findWhere(forumData.data.forum.comments, { id: parseInt($scope.data.commentId) })
    $scope.data.currentForum.comments = comment.content


  @deferred = $q.defer()
  @deferred.promise.then($scope.findForumById)
  forumData.loadForums(@deferred)






