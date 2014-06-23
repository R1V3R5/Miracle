# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# Comment = angular.module("Comment", ['ngRoute'])

# Comment.config(["$routeProvider", ($routeProvider) ->
#   $routeProvider
#     # .when('/forums/new', {templateUrl: '../assets/newForum.html', controller: "NewForumCtrl"})
#     # .when('/forums/:forumId', { templateUrl: "../assets/forum.html", controller: "ForumCtrl"})
#     # .when('/forums/:forumId/edit', { templateUrl: "../assets/editForum.html", controller: "EditForumCtrl" })
#     # .when('/forums', { templateUrl: '../assets/forumIndex.html', controller: "ForumIndexCtrl"})
#     .when('/forums/:id/comments/new', {templateUrl: '../assets/newComment.html', controller: "NewCommentCtrl"})
#     .when('/forums/:id/commentId', { templateUrl: "../assets/comment.html", controller: "CommentCtrl"})
#     .when('/forums/:id/commentId/edit', { templateUrl: "../assets/editComment.html", controller: "EditCommentCtrl" })
#     .when('/forums/:id/comments', { templateUrl: "../assets/commentIndex.html", controller: "CommentCtrl" }) 
#     .otherwise( { templateUrl: '../assets/forumIndex.html', controller: "CommentIndexCtrl"})
# ])

# Forum.config(['$httpProvider', (provider) ->
#   provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
# ])