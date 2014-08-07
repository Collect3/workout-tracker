class MetricType < ActiveRecord::Base

  validates :name, presence: true
end
