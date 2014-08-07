class Instruction < ActiveRecord::Base

  belongs_to :exercise

  validates :exercise_id, :instruction, :step_number, presence: true
end
