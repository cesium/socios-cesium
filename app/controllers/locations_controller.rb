class LocationsController < ApplicationController
	def new
		@location = Location.new
		@locations = Location.all
	end

	def create
		Location.create name: params[:location][:name]

		redirect_to new_location_path
	end
end