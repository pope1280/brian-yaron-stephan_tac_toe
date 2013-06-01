Game = {
  begin: function(){
    $('li').on('click', function(){
      var cell = $(this).attr('id');
      sendMove(cell);
    });
  }
};

  function sendMove(cell) {
    var num = cell[4];
    $.ajax({
      type: 'post',
      url: ('/game/' + game_id + '/move/' + num)
    }).done(function(data) {
      updateBoard(data);
    });
  }

  function updateBoard(string){
    var new_board = string.split("");
    var i = 0;
    for (i; i < 9; i++) {
      var id = new_board[i];
      if (id === '1') {
        $('#cell'+ (i+1) +'').append('<img src="../images/x.png" height="130px" width="130px">');
      } else if (id === '2') {
        $('#cell'+ (i+1) +'').append('<img src="../images/o.png" height="130px" width="130px">');
      }
    }
  }

  var game_id = location.href.split("game/").pop();
  var turn = null;

  function checkTurn(game_id) {
    $.ajax({
      type: 'get',
      url: ('/game/' + game_id + '/turn')
    }).done(function(data){
      if (data.turn === "go") {
        updateBoard(data.board);
        console.log("you can play now");
      }
    });
  }

$(document).ready(function() {
  Game.begin();

  window.setInterval(function() {
    checkTurn(game_id);
  }, 5000);
});
