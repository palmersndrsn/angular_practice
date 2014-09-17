WordRouter = angular.module("WordRouter", [
  "ngRoute"
])

class Router

  constructor: (@routeProvider, @locationProvider)->
    console.log("Initialized Router")
    console.log("Setting Up")
    @routeProvider.
      when "/",
        templateUrl: "/words_templates",
        controller: "WordsCtrl as word"

    @locationProvider.html5Mode(true)

WordRouter.config(["$routeProvider", "$locationProvider", Router])

