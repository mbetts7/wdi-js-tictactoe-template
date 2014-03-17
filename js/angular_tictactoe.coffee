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

    $scope.currentPlayer = $scope.players[0]

    $scope.changeCurrentPlayer = ->
      $scope.currentPlayer.indicator = null

      if $scope.currentPlayer == $scope.players[0]
        $scope.currentPlayer = $scope.players[1]
      else
        $scope.currentPlayer = $scope.players[0]

      $scope.currentPlayer.indicator = "current"
      return
    
    $scope.selectTile = (tile) ->
      tile.img_url = $scope.currentPlayer.img_url
      $scope.changeCurrentPlayer()

  # Create board and tiles
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

    return