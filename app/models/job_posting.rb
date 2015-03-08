class JobPosting
  require 'httparty'
  include HTTParty

  attr_accessor :job, :location, :ip

  base_uri 'http://api.indeed.com/ads/apisearch?'
  maintain_method_across_redirects true

  def initialize(job, location, *options)
    @job = job
    @location = location
  end

  def auth
    {publisher: 9314101428399975}
  end

  def list

    params = {q: @job, l: @location, v: 2}

    self.class.get(
      auth.update(params).to_query
    )

  end

end