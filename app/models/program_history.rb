class ProgramHistory < ActiveRecord::Base

  belongs_to :user
  belongs_to :exercise
  belongs_to :program
  belongs_to :workout
  belongs_to :workout_exercise

  validates :user_id, :program_id, :workout_id, :workout_exercise_id, :exercise_id, :set_num, presence: true
  validates :user_id, uniqueness: {scope: [:program_id, :workout_id, :workout_exercise_id, :set_num]}

end
