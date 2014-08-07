class Intensity < ActiveRecord::Base

  has_many :workout_exercises
  validates :name, presence: true
end
