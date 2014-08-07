class Equipment < ActiveRecord::Base
  has_many :exercises

  validates :name, presence: true, uniqueness: true

end
