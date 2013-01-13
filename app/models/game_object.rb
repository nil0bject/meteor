class GameObject < ActiveRecord::Base
  belongs_to :gameObjectDatum
  attr_accessible :x, :y, :rotation_angle, :rotation_velocity, :velocity_x, :velocity_y, :acceleration_x, :acceleration_y, :gameObjectData
end
