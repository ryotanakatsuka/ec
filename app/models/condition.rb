class Condition < ActiveHash::Base
  self.data =[
    { id: 1, name: '---' },
    { id: 2, name: '白米' },
    { id: 3, name: '玄米' },
    { id: 4, name: 'もち米' },
    { id: 5, name: '酒粕' },
  ]
  
  include ActiveHash::Associations
  has_many :items

end
