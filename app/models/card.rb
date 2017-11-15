class Card < ActiveRecord::Base
  has_many :card_items, dependent: :destroy, class_name: 'CardItem'
  has_many :items, through: :card_items
  belongs_to :game
end
