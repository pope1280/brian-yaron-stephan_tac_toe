Game ={
  begin: function(){
    $('CELL SELECTED').on('click', function(){
      adMove(CELL SELECTED, X OR O(WHICH USER LOGGED IN) );
    });
  };

  function addMove(cell, xOrO){
    ITEM TO BE CHOSEN.css("background-image", '(url)"../images/'+ xOrO +'.png"');
  };
}

$(document).ready(function() {
  Game.begin();
});
