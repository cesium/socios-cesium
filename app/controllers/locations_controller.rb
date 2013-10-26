class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    Location.create(location_params)
    redirect_to locations_path
  end

  def edit
    @location = Location.find_by_id(params[:id])
    unless @location
      flash[:error] = "id does not exist"
      redirect_to locations_path
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else
      flash.now[:error] = "You fucked up"
      render :edit
    end
  end

  def destroy
    Location.delete(params[:id])

    redirect_to locations_path
  end

  private
    def location_params
      params.require(:location).permit(:name)
    end

end