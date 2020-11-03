class Condition < ActiveHash::Base
  self.data =[
    { id: 1, name: '---' },
    { id: 2, name: '新米' },
    { id: 3, name: '古米' },
    { id: 4, name: '新商品' },
    { id: 5, name: '話題の商品' },
  ]
  
  include ActiveHash::Associations
  has_many :items

end
