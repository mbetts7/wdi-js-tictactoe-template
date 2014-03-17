game = game || {}

game.ticTacToe = angular.module 'ticTacToe', []

game.ticTacToe.controller 'gameController',
  ($scope) ->    
    
    $scope.players = [
        name: "Ernie"
        marker: "X"
        img_url: "img/ernie.jpg"
        indicator: "current"
      ,
        name: "Bert"
        marker: "O"
        img_url: "img/bert.jpg"
        indicator: null
    ]

    $scope.board = [
        position: 0
        clicked: false
        img_url: null
      , 
        position: 1
        clicked: false
        img_url: null
      , 
        position: 2
        clicked: false
        img_url: null
      , 
        position: 3
        clicked: false
        img_url: null
      , 
        position: 4
        clicked: false
        img_url: null
      , 
        position: 5
        clicked: false
        img_url: null
      , 
        position: 6
        clicked: false
        img_url: null
      , 
        position: 7
        clicked: false
        img_url: null
      , 
        position: 8
        clicked: false
        img_url: null
    ]

    $scope.selectTile = (tile) ->
      alert("Tile #"+ tile.position + " was clicked")
    return