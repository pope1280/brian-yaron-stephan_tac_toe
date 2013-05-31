Game ={
  begin: function(){
    


    
    addMove(DEPENDS ON USER);

  }

  function addMove(xOrO){
    .css("background-image", '(url)"../images/'+ xOrO +'.png"');
  }
}

$(document).ready(function() {
  Game.begin();
});
