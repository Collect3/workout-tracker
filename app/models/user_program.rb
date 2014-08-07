class UserProgram < ActiveRecord::Base

  belongs_to :user
  has_many :programs

  validates :program_id, :user_id, presence: true

end
