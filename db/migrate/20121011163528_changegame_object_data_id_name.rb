class ChangegameObjectDataIdName < ActiveRecord::Migration
  def change
    rename_column :game_objects, :gameObjectData_id, :gameObjectDatum_id
  end
end
