class Address < ApplicationRecord
  belongs_to :user,optional:true
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture
    
  with_options presence: true do
    validates :postal_code,format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :prefecture_id
    validates :addresses
    validates :phone_number,   format:{ with: /\A\d{11}\z/}
    validates :city
  
  end
end
