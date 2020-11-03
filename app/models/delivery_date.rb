class DeliveryDate < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '2~3日以内' },
    { id: 3, name: '4~6日以内' },
    { id: 4, name: '7~10日以内' },
  ]
  include ActiveHash::Associations
  has_many :items
end
