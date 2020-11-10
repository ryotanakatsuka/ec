class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image,dependent: :destroy
  has_one :order,dependent: :destroy

  has_many :line_items
  before_destroy :referenced_by_line_item

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivery_date

  with_options presence: true do
  validates :image
  validates :name
  validates :manufacturer
  validates :internal_capacity
  validates :price,format:{with: /\A[a-z0-9]+\z/i,message: "is invalid. Input half-width characters."}
  validates :condition_id,numericality: { other_than: 1 } 
  validates :prefecture_id,numericality: { other_than: 1 } 
  validates :delivery_date_id,numericality: { other_than: 1 } 

  end
  private
  def referenced_by_line_item

	  if line_items.empty?
		  return true
	  else
		  errors.add(:base, '品目が存在します。')
		  return false
	  end
  end
end
