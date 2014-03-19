class Invoice < ActiveRecord::Base
  validates :invoice_no, presence: true
  validates :invoice_frequency, presence: true
  belongs_to :sale
end
