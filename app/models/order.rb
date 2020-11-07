class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item,dependent: :destroy
  
  attr_accessor :token
  validates :token, presence: true
end
