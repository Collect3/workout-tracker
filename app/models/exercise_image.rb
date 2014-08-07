class ExerciseImage < ActiveRecord::Base
  belongs_to :exercise

  validates :name, :gender, :image_url, presence: true

end
