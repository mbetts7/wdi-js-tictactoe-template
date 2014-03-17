game = game || {}

game.ticTacToe = angular.module 'ticTacToe', []

game.ticTacToe.controller 'gameController', [ "$scope",
  ($scope) ->    
    
    $scope.players = [
        name: "Ernie"
        marker: "X"
        img_url: "img/ernie.jpg"
        indicator: "current"
        tiles_selected: []
      ,
        name: "Bert"
        marker: "O"
        img_url: "img/bert.jpg"
        indicator: null
        tiles_selected: []
    ]

    $scope.winCombos = [
        [0,1,2]
      ,
        [3,4,5]
      ,
        [6,7,8]
      ,
        [0,3,6]
      ,
        [1,4,7]
      ,
        [2,5,8]
      ,
        [0,4,8]
      ,
        [2,4,6]
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
    
    $scope.isWin = (tiles) ->
      for combo in $scope.winCombos
        if tiles.indexOf(combo[0]) >= 0 and tiles.indexOf(combo[1]) >= 0 and tiles.indexOf(combo[2]) >= 0
          return true
      return false

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

    $scope.selectTile = (tile) ->
      if not tile.clicked
        tile.clicked = true
        $scope.currentPlayer.tiles_selected.push tile.position
        tile.img_url = $scope.currentPlayer.img_url
        if $scope.isWin($scope.currentPlayer.tiles_selected)
          alert($scope.changeCurrentPlayer.name + " wins")
        $scope.changeCurrentPlayer()

    return
]