class Product < ActiveRecord::Base
<<<<<<< HEAD
=======
  validates :name, presence: true
>>>>>>> Lee
  has_many :sales
end
