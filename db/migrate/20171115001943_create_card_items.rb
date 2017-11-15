class CreateCardItems < ActiveRecord::Migration
  def change
    create_table :card_items do |t|
      t.integer :card_id
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
