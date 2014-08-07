class Workout < ActiveRecord::Base

  has_many :workout_exercises
  belongs_to :program

  validates :name, :program_id, :day, :week, presence: true
  validates :day, numericality: {greater_than: 0, less_than_or_equal_to: 7, only_integer: true}
  validates :week, numericality: {greater_than: 0, only_integer: true}

end
