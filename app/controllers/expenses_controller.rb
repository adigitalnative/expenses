class ExpensesController < ApplicationController

  before_filter :find_expense_class

  def new
    @expense = @expense_class.expenses.build
  end

  def create
    @expense = @expense_class.expenses.build(params[:expense])
    if @expense.save
      flash[:notice] = "Expense Added"
      redirect_to category_summary_path(@expense_class.category)
    else

    end
  end

  private

  def find_expense_class
    @expense_class = ExpenseClass.find(params[:expense_class_id])
  end

end
