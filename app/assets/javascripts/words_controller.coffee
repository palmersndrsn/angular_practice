WordCtrls = angular.module("WordCtrls", [])

class WordsCtrl

  constructor: (@scope, @Word)->
    @greeting = "hello world!"
    @Word.all().success(data) =>
    	@wordArr = (data)
    return this

  addWord: (newWord)->
  	console.log("here")
  	@Word.create(newWord)
  	.success (data)->
  		console.log(data)



WordCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl])