class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         with_options presence: true do 
          validates :first_name         
          validates :last_name                
          validates :first_name_kana    
          validates :last_name_kana     
          
        end
        has_one :address
        has_many :items
        has_many :orders
end
