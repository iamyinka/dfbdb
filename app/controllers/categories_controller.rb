class CategoriesController < ApplicationController

  def index
    redirect_to new_category_path
    flash[:danger] = "Access to the url is denied"
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Department Title Successfully Created!"
      redirect_to departments_path
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:department_id, :title)
  end

end
