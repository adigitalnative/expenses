class ExpenseClassesController < ApplicationController

  before_filter :find_category

  def new
    @expense_class = @category.expense_classes.build
  end

  def create
    @expense_class = @category.expense_classes.build(params[:expense_class])
    if @expense_class.save
      flash[:notice] = "Expense type created"
      redirect_to categories_path
    else
      flash[:alert] = "Expense type not created"
      render action: "new"
    end
  end

  def edit
    @expense_class = ExpenseClass.find(params[:id])
  end

  def update
    @expense_class = ExpenseClass.find(params[:id])

    if @expense_class.update_attributes(params[:expense_class])
      flash[:notice] = "Expense type updated"
      redirect_to categories_path
    else
      flash[:alert] = "Expense type not updated"
      render action: "new"
    end
  end

  def destroy
    @expense_class = ExpenseClass.find(params[:id])
    @expense_class.destroy

    flash[:notice] = "Expense Deleted"
    redirect_to categories_path
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end
end
