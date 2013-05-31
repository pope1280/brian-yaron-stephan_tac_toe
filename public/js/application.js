Game ={
  begin: function(){
    // $('CELL SELECTED').on('click', function(){
    //   addMove(CELL SELECTED, X OR O(WHICH USER LOGGED IN) );
    // });
  };


  function updateBoard(string){
    var new_board = string.split('');
    var i = 1;
    for (i; i < 10; i++) {
      var id = new_board[i];
      if (id = 1){
        $('#'+ i +'').css("background-image", 'url(../images/x.png)');
      } else if(id = 2){
        $('#'+ i +'').css("background-image", 'url(../images/O.png)');
      }
    };
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
