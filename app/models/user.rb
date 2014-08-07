class User < ActiveRecord::Base

  has_many :user_programs
  has_many :program_histories

  validates :email, uniqueness: true
  validates :uid, uniqueness: true
  validates :uid, :first_name, :last_name, :email, :gender, :date_of_birth, :time_zone, presence: true


end
