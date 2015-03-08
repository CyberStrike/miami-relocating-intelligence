class Job < ActiveRecord::Base
  has_many :job_locations
  has_many :job_location_stats
  has_many :locations, through: :job_locations

  def self.search(search)
   if search
     where(title: search)
   end
  end

end
