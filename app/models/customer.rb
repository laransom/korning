class Customer < ActiveRecord::Base
<<<<<<< HEAD
=======
  validates :name, presence: true
  validates :account_no, presence: true
>>>>>>> Lee
  has_many :sales
end
