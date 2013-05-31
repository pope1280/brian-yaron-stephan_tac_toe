Game ={
  begin: function(){
    $('CELL SELECTED').on('click', function(){
      addMove(CELL SELECTED, X OR O(WHICH USER LOGGED IN) );
    });
  };

  function addMove(cell, xOrO){
    cell.css("background-image", '(url)"../images/'+ xOrO +'.png"');
  };

  function updateBoard(string){
    new_board = string.split('');

  }

  var game_id = location.href.split("game/").pop();
  var turn = null;

  function checkTurn(game_id) {
    $.ajax({
      type: 'get',
      url: ('/game' + game_id + '/turn')
    }).done(function(data){
      if (data.turn === "go") {
        updateBoard(data.board);
        console.log("you can play now");
      }
    });
  }
}

$(document).ready(function() {
  Game.begin();

  window.setInterval(function() {
    checkTurn(game_id);
  }, 5000);
});
