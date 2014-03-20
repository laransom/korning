class Invoice < ActiveRecord::Base
  validates :invoice_no, presence: true
  validates :sales_id, presence: true
  belongs_to :sale
end
