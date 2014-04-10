class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Category created"
      redirect_to categories_path
    else
      flash[:alert] = "Category not created"
      render action: "new"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Category updated"
      redirect_to categories_path
    else
      flash[:alert] = "Category not updated"
      render action: "new"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.delete

    flash[:notice] = "Category Deleted"
    redirect_to categories_path
  end

end