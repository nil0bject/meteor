class AddSpriteCountToGameObjectData < ActiveRecord::Migration
  def change
    add_column :game_object_data, :sprite_count_x, :integer
    add_column :game_object_data, :sprite_count_y, :integer
    remove_column :game_object_data, :sprite_count
  end
end
