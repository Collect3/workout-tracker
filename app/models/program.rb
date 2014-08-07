class Program < ActiveRecord::Base

  belongs_to :program_image
  has_many :workouts
  has_many :program_histories
  has_many :user_programs

  validates :name, presence: true


end
