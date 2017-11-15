class Item < ActiveRecord::Base
  has_many :item_cards, dependent: :destroy, class_name: 'CardItem'
  has_many :cards, through: :item_cards
  belongs_to :game
end
