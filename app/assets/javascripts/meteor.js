if ($('.game')) {
  var int = self.setInterval(function () {
    game_loop();
  },1000);
}

function game_loop(){
  $.get('/ping.json', function(data) {
    $.each(data, function(i, game_object) {
      if (!($('.game_object#'+game_object.id).length == 0)) {
        var game_object_div = $('.game_object#'+game_object.id);
      } else {
        $('.game').append('<div class="game_object" id="'+game_object.id+'" style="position:absolute;"></div>');
      }
      var pos = game_object_div.position();
      game_object_div.css({
        top: game_object.y + "px",
        left: game_object.x + "px"
      });

      if ((game_object_div.attr('data-game_object_data')==undefined)) {
        $.get('/game_object_data/'+game_object.gameObjectDatum_id+'.json', function(data) {
          game_object_div.attr('data-game_object_data', JSON.stringify(data));
        });
      }

      var data = JSON.parse(game_object_div.attr('data-game_object_data'));

      if (game_object_div.css('background-image') == 'none') {
        game_object_div.css('background-image', 'url("'+data.sprites_url+'")');
      }
          
      game_object_div.css('background-position-y', (Math.floor(Math.floor(game_object.rotation_angle)/data.sprite_count_x)*data.sprite_height)+data.sprite_height+'px');
      game_object_div.css('background-position-x', (Math.floor(Math.floor(game_object.rotation_angle)%data.sprite_count_x)*data.sprite_width)+data.sprite_width+'px');
      game_object_div.css('width', data.sprite_width+'px');
      game_object_div.css('height', data.sprite_height+'px');
    });
  });
}