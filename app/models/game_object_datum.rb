class GameObjectDatum < ActiveRecord::Base
  has_many :gameObjects
  attr_accessible :name, :sprites_url, :type, :max_acceleration, :max_velocity, :gameObjects
end
