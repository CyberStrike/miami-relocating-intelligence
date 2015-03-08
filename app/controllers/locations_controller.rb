class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :set_job, only: [:show]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show

    ## Chart

    @chart_data = {
      1.year.ago =>  rand(9000...10000),
      2.years.ago => rand(500...8000),
      3.years.ago => rand(500...8000),
      4.years.ago => rand(500...8000),
      5.years.ago => rand(500...8000),
      6.years.ago => rand(500...8000),
      7.years.ago => rand(500...8000),
      8.years.ago => rand(500...8000),
      9.years.ago => rand(500...8000),
      10.years.ago => rand(1000...5000)
    }

    ## Job Postings

    jobpostings = JobPosting.new(@job.title, (@location.city + ', ' + @location.state)  )
    @posts = jobpostings.list['response']['results'].present? ? jobpostings.list['response']['results']['result'] : ''

    ## Map

    map_params = {
        center: @location.city + ', ' + @location.state,
        zoom: 12,
        size: '1280x192',
        scale: 2
    }

    @map = "https://maps.googleapis.com/maps/api/staticmap?" + map_params.to_query
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @location }
      else
        format.html { render action: 'new' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    def set_job
      @job = Job.find(params[:job_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:city, :state)
    end
end
