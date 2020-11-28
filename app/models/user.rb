class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         with_options presence: true do 
          validates :first_name,         format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
          validates :last_name,          format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}                
          validates :first_name_kana,    format: { with: /\A[ァ-ヶー－]+\z/}
          validates :last_name_kana,     format: { with: /\A[ァ-ヶー－]+\z/}
          
        end
        has_one :address,dependent: :destroy
        has_many :items,dependent: :destroy
        has_many :orders,dependent: :destroy
        has_many :news
        
        
end
