class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :game_id, index: true
      t.string :word
      t.timestamps null: false
    end
  end
end
