class PagesController < ApplicationController
  def index
  end

  def search
    @job = Job.search(params[:job][0].titleize)[0]

    if @job.present?
      @stats = @job.job_location_stats.order(available: :desc).limit(10)
    else
      flash[:notice] = 'No Such Job In Database'
      redirect_to :back
    end
  end

end
