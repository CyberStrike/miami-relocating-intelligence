class PagesController < ApplicationController
  def index
  end

  def search
    redirect_to locations_path
  end
end
