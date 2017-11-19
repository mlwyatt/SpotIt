class CreateCardItems < ActiveRecord::Migration
  def change
    create_table :cards_items do |t|
      t.integer :card_id
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
