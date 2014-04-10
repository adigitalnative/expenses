class ExpensesController < ApplicationController

  def new
    @expense_class = ExpenseClass.find(params[:expense_class_id])
    @expense = @expense_class.expenses.build
  end

end
