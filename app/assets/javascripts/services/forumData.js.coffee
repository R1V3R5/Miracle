angular.module("Forum").factory("forumData", ['$http', ($http) ->
  forumData = 
    data:
      forums: [
        {
          name: "Loading...",
          comments: []
        }
      ]
    isLoaded: false
    


  forumData.loadForums = (deferred) ->
    if forumData.isLoaded == false
      $http.get('/forums.json').success( (data) ->
        forumData.data.forums = data
        forumData.isLoaded = true
        console.log "Successfully received forums."
        if deferred
          deferred.resolve()
      ).error( ->
        console.log "Failed to load forums."
        if deferred
          deferred.reject "Failed to load forums."
      )
    else
      if deferred
        deferred.resolve()

  forumData.loadComments = (deferred) ->
    if forumData.isLoaded == false
      $http.get('/forums/#{formData.forumId}/comments.json').success( (data) ->
        forumData.data.comments = data
        forumData.isLoaded = true
        console.log "Successfully received forums."
        if deferred
          deferred.resolve()
      ).error( ->
        console.log "Failed to load forums."
        if deferred
          deferred.reject "Failed to load forums."
      )
    else
      if deferred
        deferred.resolve()
  forumData.createForum = (formData) ->
    console.log("Yay")
    data = 
      forum: 
        name: formData.newForumName
        

    $http.post('/forums.json', data).success( (data) ->
      forumData.data.forums.push(data)
      console.log("Successfully created forum.")
    ).error( ->
      console.log("Failed to create forum.")
    )

    return true

  forumData.updateForum = (formData) ->
    data =
      forum:
        name: formData.editForumName

    $http.put("/forums/#{formData.editForumId}.json", data).success( (data) ->
      console.log("Successfully edited forum.")
      
      forum = _.findWhere( forumData.data.forums, { id: parseInt(formData.editForumId)})
      forum.name = data.name
    ).error( ->
      console.log("Failed to edit forum.")
    )

  forumData.deleteForum = (forumId) ->
    console.log ("am i close to deleting?")
    data = 
      forum:
          id: forumId
    $http.delete("/forums/#{$scope.data.forumId}.json").success( (data) ->
      console.log("Successfully deleted forum.")
      forumData.data.forums = _.without(forumData.data.forums, forum)
      forumData.data.forums = _.findWhere(forumData.data.forums, { id: parseInt(forumId)})
      console.log('Deleted!')
    ).error(
      console.log("Failed to delete forum.")
    )
    return true

  forumData.findForumById = (forumId) ->
    console.log forumId
    console.log forumData.data.forums
    test = _.findWhere(forumData.data.forums, { id: parseInt(forumId) })
    console.log(test)
    return test

  forumData.findCommentById = (commentId) ->
    console.log commentId
    console.log forumData.data.comments
    test = _.findWhere(forumData.data.forums.comments, { id: parseInt(commentId) })
    console.log(test)
    return test

  forumData.createComment = (formData) ->
    console.log "Creating Comment"
    console.log forumData
    data = 
      comment: 
        name: formData.newCommentName
        content: formData.newCommentContent        

    $http.post("/forums/#{formData.forumId}/comments.json", data).success( (data) ->      
      forumData.data.currentForum.comments.push(data)
      console.log("Successfully created comment.")
    ).error( ->
      console.log("Failed to create comment.")
    )

    return true


  return forumData

])


  # forumData.deleteForum = (forumId) ->
  #   console.log $routeParams
  #   data = 
  #     forum:
  #         id: forumId
  #   $http.delete("/forums/#{$scope.data.forumId}.json").success( (data) ->
  #     console.log("Successfully deleted forum.")
  #     forumData.data.forums = _.without(forumData.data.forums, forum), _.findWhere(forumData.data.forums, { id: parseInt(forumId)})
  #     console.log('Deleted!')
  #   ).error(
  #     console.log("Failed to delete forum.")
  #   )
  #   return true