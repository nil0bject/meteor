class CreateGameObjectData < ActiveRecord::Migration
  def change
    create_table :game_object_data do |t|
      t.string :name
      t.string :sprites_url
      t.integer :type
      t.float :max_acceleration
      t.float :max_velocity

      t.timestamps
    end
  end
end
