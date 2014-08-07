class SecondaryMuscle < ActiveRecord::Base

has_many :muscles
has_many :exercises

validates :exercise_id, :muscle_id, presence: true

end
