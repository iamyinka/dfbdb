class StaffsController < ApplicationController
  before_action :staff_params, only: [:new, :create, :edit, :update]
  before_action :authenticate_user!

  def index
    @staffs = Staff.all
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      flash[:notice] = "New staff successfully added to the DFB Staffs database."
      redirect_to root_path
    else
      flash[:danger] = "An error occurred that prohibited the staff from saving to the database"
      render :new
    end
  end

  private

  def staff_params
    params.require(:staff).permit(:fname, :lname, :phone, :email, :address, :position)
  end

end
