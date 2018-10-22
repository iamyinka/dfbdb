class StaffsController < ApplicationController
  before_action :staff_params, only: [:create, :update]
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
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

  def show
    #code
  end

  def edit
    #code
  end

  def update
    if @staff.update(staff_params)
      flash[:notice] = "Staff details successfully updated."
      redirect_to staff_path
    else
      flash[:danger] = "An error occurred that prohibited the staff from saving to the database"
      render :edit
    end
  end

  def destroy
    @staff.destroy
    flash[:notice] = "Staff details successfully deleted from DFB Staffs database."
    redirect_to root_path
  end

  private

  def staff_params
    params.require(:staff).permit(:fname, :lname, :phone, :email, :address, :position, :department_id, :status, :leave_type, category_ids: [])
  end

  def set_staff
    @staff = Staff.find(params[:id])
  end

end
