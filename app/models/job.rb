class Job < ActiveRecord::Base
  has_many :job_locations
  has_many :locations, through: :job_locations
end
