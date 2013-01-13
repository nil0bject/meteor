class PingController < ApplicationController

# receive ping from client
# GET /ping
  def receive_ping
    #check for user
    if cookies[:user_id].nil?
      user = User.new
      user.save
      cookies[:user_id] = user[:id]
    end

    #retrieve game data
    @game_objects = GameObject.all

    @game_objects.each do |game_object|
      time_delta = Time.now - game_object[:updated_at]
      #update local variables based on time delta
      game_object.rotation_angle += game_object.rotation_velocity * time_delta
      game_object.rotation_angle = 0 if game_object.rotation_angle >= game_object.gameObjectDatum[:sprite_count_x]*game_object.gameObjectDatum[:sprite_count_y]
      game_object.velocity_x += (game_object.acceleration_x * time_delta)
      game_object.x += game_object.velocity_x
      game_object.x = (0-game_object.gameObjectDatum[:sprite_width]) if game_object.x > GAME_WIDTH
      game_object.x = GAME_WIDTH if game_object.x < (0-game_object.gameObjectDatum[:sprite_width]) 
      game_object.velocity_y += (game_object.acceleration_y * time_delta)
      game_object.y += game_object.velocity_y
      game_object.y = (0-game_object.gameObjectDatum[:sprite_height])  if game_object.y > GAME_HEIGHT
      game_object.y = GAME_HEIGHT if game_object.y < (0-game_object.gameObjectDatum[:sprite_height])
      game_object.save
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_objects }
    end
  end
end
