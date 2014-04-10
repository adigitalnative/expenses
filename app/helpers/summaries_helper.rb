module SummariesHelper

  def category_subtotal(category)
    expense_total_in_cents = category[:expenses].map do |expense|
      expense.value_in_cents
    end
    expense_total_in_cents = expense_total_in_cents.reduce(:+)
    convert_to_dollars_cents_array(expense_total_in_cents)
  end

  private

  def convert_to_dollars_cents_array(value)
    value = value.to_s
    digits = value.length
    dollars = value[0..digits-3]
    cents = value[digits-2..digits-1]
    [dollars, cents].join(".")
  end

end