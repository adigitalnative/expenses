class Project < ActiveRecord::Base
  attr_accessible :end, :name, :start

  has_many :expenses
end
