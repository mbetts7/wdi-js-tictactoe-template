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

    $scope.board = [0..8]
    return