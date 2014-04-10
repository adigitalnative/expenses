class SummariesController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @expense_classes = @category.expense_classes.map do |expense_class|
      { class_name: expense_class.name, class_id: expense_class.id,
        expenses: expense_class.expenses }
      end
  end

end
