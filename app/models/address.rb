class Address < ApplicationRecord
  belongs_to :user,optional:true
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture
    
  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :addresses
    validates :phone_number
    validates :city
  
  end
end
