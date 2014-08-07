class SetType < ActiveRecord::Base

  has_many :workout_exercises

  validates :name, :presence => true

end
