class Location < ActiveRecord::Base
  has_many :job_locations
  has_many :jobs, through: :job_locations
  has_many :job_location_stats

  def stats
    self.job_location_stats
  end
end
