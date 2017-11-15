class Game < ActiveRecord::Base
  has_many :cards, dependent: :destroy
  has_many :items, dependent: :destroy

  accepts_nested_attributes_for :items, allow_destroy: true
end
