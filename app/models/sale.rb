class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :employee
  belongs_to :product
  has_many :invoices
end
