class CardItem < ActiveRecord::Base
  self.table_name = 'cards_items'
  belongs_to :card
  belongs_to :item
end
