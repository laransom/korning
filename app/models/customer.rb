class Customer < ActiveRecord::Base
  validates :name, presence: true
  validates :account_no, presence: true
  has_many :sales
end
