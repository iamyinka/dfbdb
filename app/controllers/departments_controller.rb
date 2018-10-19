class DepartmentsController < ApplicationController
  before_action :set_dept, except: [:index, :new, :create]

  def index
    @departments = Department.all
  end

  def show
    @dept_categories = @department.categories.all
  end


  private

  def set_dept
    @department = Department.find(params[:id])
  end

  def dept_params
    params.require(:department).permit(:dept_name)
  end
end
