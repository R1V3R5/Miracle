# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./services
#= require_tree ./controllers
#= require_tree ./filters

Forum = angular.module("Forum", ['ngRoute', 'ui.bootstrap'])

Forum.config(["$routeProvider", ($routeProvider) ->
  $routeProvider
    .when('/forums/new', {templateUrl: '../assets/newForum.html', controller: "NewForumCtrl"})
    .when('/forums/:forumId', { templateUrl: "../assets/forum.html", controller: "ForumCtrl"})
    .when('/forums/:forumId/edit', { templateUrl: "../assets/editForum.html", controller: "EditForumCtrl" })
    # .when('/forums', { templateUrl: '../assets/forumIndex.html', controller: "ForumIndexCtrl"})
    .when('/forums/:forumId/comments/new', {templateUrl: '../assets/newComment.html', controller: "NewCommentCtrl"})
    .when('/forums/:forumId/comments/:commentId', { templateUrl: "../assets/comment.html", controller: "CommentCtrl"})
    .when('/forums/:forumId/comments/:commentId/edit', { templateUrl: "../assets/editComment.html", controller: "EditCommentCtrl" })
    .when('/forums/:forumId/comments', { templateUrl: "../assets/commentIndex.html", controller: "CommentIndexCtrl" }) 
    .otherwise( { templateUrl: '../assets/forumIndex.html', controller: "ForumIndexCtrl"})
])

Forum.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

