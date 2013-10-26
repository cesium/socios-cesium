class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    Member.create(member_params)
    redirect_to members_path
  end

  def edit
    @member = Member.find_by_id(params[:id])
    unless @member
      flash[:error] = "id does not exist"
      redirect_to members_path
    end
  end


  def show
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_path
    else
      flash.now[:error] = "You fucked up"
      render :edit
    end
  end

  def destroy
    Member.delete(params[:id])

    redirect_to members_path
  end

  private
    def member_params
      params.require(:member).permit(:name,
                                      :member_number,
                                      :email,
                                      :phone,
                                      :birthday,
                                      :paid,
                                      :student_number,
                                      :location_id,
                                      :course_id,
                                      :responible_id)
    end

end
