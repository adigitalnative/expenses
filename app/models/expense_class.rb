class ExpenseClass < ActiveRecord::Base
  attr_accessible :name, :category

  has_many :expenses
  belongs_to :category
end
