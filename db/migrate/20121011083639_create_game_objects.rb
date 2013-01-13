class CreateGameObjects < ActiveRecord::Migration
  def change
    create_table :game_objects do |t|
      t.references :gameObjectData
      t.float :x
      t.float :y
      t.float :rotation_angle
      t.float :rotation_velocity
      t.float :velocity_x
      t.float :velocity_y
      t.float :acceleration_x
      t.float :acceleration_y

      t.timestamps
    end
    add_index :game_objects, :gameObjectData_id
  end
end
