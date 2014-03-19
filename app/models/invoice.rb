class Invoice < ActiveRecord::Base
  validates :invoice_no, presence: true
  validates :invoice_frequency, presence: true
  has_one :sale
end
