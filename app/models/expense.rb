class Expense < ActiveRecord::Base
  attr_accessible :description, :value_in_cents, :project_id

  belongs_to :project
  belongs_to :expense_class

  def value_in_dollars
    value_string = value_in_cents.to_s
    digits = value_string.length
    dollars = value_string[0..digits-3]
    cents = value_string[digits-2..digits-1]
    [dollars, cents]
  end
end
