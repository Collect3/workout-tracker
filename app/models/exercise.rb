class Exercise < ActiveRecord::Base

  belongs_to :equipment
  belongs_to :exercise_type
  belongs_to :mechanics_type
  belongs_to :level
  belongs_to :force_type
  belongs_to :anatomy_image
  belongs_to :muscle, :foreign_key => :primary_muscle_id
  has_many :secondary_muscles
  has_many :instructions
  has_many :workout_exercises
  has_many :program_histories
  has_many :exercise_images


  validates :name, :also_known_as, :rating, :benefits, :exercise_type_id, :mechanics_type_id, :level_id, :equipment_id, :metric_type_id, :primary_muscle_id, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 10, only_integer: false}

end
