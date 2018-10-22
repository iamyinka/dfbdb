class DepartmentsController < ApplicationController
  before_action :set_dept, except: [:index, :new, :create]

  def index
    @departments = Department.all
  end

  def show
    @dept_categories = @department.categories.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(dept_params)
    if @department.save
      flash[:notice] = "New Department Successfully Added"
      redirect_to departments_path
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end

  end

  private

  def set_dept
    @department = Department.find(params[:id])
  end

  def dept_params
    params.require(:department).permit(:dept_name)
  end
end
