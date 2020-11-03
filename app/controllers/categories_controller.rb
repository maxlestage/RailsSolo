class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to category_path
  end

  def destroy
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end
end
