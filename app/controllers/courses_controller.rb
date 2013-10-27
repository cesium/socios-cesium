class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    Course.create(location_params)
    redirect_to courses_path
  end

  def edit
    @course = Course.find_by_id(params[:id])
    unless @course
      flash[:error] = "id does not exist"
      redirect_to courses_path
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(location_params)
      redirect_to courses_path
    else
      flash.now[:error] = "You fucked up"
      render :edit
    end
  end

  def destroy
    Course.delete(params[:id])

    redirect_to courses_path
  end

  private
    def location_params
      params.require(:course).permit(:name)
    end

end