class Sale < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :customer
  belongs_to :employee
  belongs_to :product
  has_many :invoices
=======
  validates :sale_date, presence: true
  validates :sale_amount, presence: true
  validates :units_sold, presence: true
  has_many :invoices
  belongs_to :customer
  belongs_to :employee
  belongs_to :product
  validates :customer, presence: true
  validates :product, presence: true
>>>>>>> Lee
end
