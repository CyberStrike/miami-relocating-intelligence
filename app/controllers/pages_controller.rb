class PagesController < ApplicationController
  def index
  end

  def search
    @job = Job.search(params[:job][:title].titleize)[0]

    if @job.present?
      @stats = @job.job_location_stats.order(available: :desc).limit(10)
      render layout: false
    else
      flash[:notice] = 'No Such Job In Database'
      redirect_to root_path, status: :unprocessable_entity
    end
  end

end
