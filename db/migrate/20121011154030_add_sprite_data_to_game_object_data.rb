class AddSpriteDataToGameObjectData < ActiveRecord::Migration
  def change
    add_column :game_object_data, :sprite_count, :integer
    add_column :game_object_data, :sprite_width, :float
    add_column :game_object_data, :sprite_height, :float
  end
end
