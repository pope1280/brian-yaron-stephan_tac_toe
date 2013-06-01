// $(document).ready(function(){

//   var game_id = location.href.split("game/").pop();
//   var turn = null;

//   function checkTurn(game_id) {
//     $.ajax({
//       type: 'get',
//       url: ('/game' + game_id + '/turn')
//     }).done(function(data){
//       if (data.turn === "go") {
//         updateBoard(data.board);
//         console.log("you can play now --activate clicks");
//       }
//     });
//   }

//   function sendMove(cell) {
//     $.ajax({
//       type: 'post',
//       url: ('/game' + game_id + '/move' + cell)
//     }).done(function(data) {
//       updateBoard(data.board);
//   })

//   window.setInterval(function() {
//     checkTurn(game_id);
//   }, 5000);
// });