class CategoriesController < ApplicationController
  def show
    @category= Category.find(params[:id])
  end
  def index
    @categories = Category.all

  end

  def new
    @category = Category.new
  end

  def create
      @category = Category.new(category_params)
      if @category.save
        flash[:notice] = "Category was created successfully."
        redirect_to @category
      else
        render 'new'
      end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      flash[:notice] = "Category was updated successfully."
      redirect_to @category
    else
      render 'edit'
    end

  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  def category_params
    params.require(:category).permit(:cat)
  end
end
