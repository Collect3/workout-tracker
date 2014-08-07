class WorkoutExercise < ActiveRecord::Base

  belongs_to :workout
  belongs_to :intensity
  belongs_to :exercise, :foreign_key => :exercise_id
  belongs_to :exercise, :foreign_key => :alternative_exercise_id

  validates :num_sets, numericality: {greater_than: 0, only_integer: true}
  validates :num_reps, numericality: {greater_than: 0, only_integer: true}
end
