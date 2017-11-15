class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id, index: true
      t.string :nickname
      t.integer :difficulty
      t.timestamps null: false
    end
  end
end
