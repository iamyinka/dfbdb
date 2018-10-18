class DepartmentsController < ApplicationController
  #code

  def index
    @departments = Department.all
  end


  private

  def set_dept
    @department = Department.find(params[:id])
  end

  def dept_params
    params.require(:department).permit(:dept_name)
  end
end
