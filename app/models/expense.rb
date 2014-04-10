class Expense < ActiveRecord::Base
  attr_accessible :description, :value_in_cents

  belongs_to :project
  belongs_to :expense_class
end
