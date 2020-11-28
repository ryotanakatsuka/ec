class Address < ApplicationRecord
  belongs_to :user,optional:true
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture
    
  with_options presence: true do
    validates :postal_code,format: { with: /\A\d{3}[-]\d{4}\z/, message: 'を入力してください' }
    validates :prefecture_id
    validates :addresses
    validates :phone_number
    validates :city
  
  end
end
