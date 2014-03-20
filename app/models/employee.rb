class Employee < ActiveRecord::Base
<<<<<<< HEAD
=======
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
>>>>>>> Lee
  has_many :sales
end
