class Invoice < ActiveRecord::Base
<<<<<<< HEAD
=======
  validates :invoice_no, presence: true
  validates :sales_id, presence: true
>>>>>>> Lee
  belongs_to :sale
end
