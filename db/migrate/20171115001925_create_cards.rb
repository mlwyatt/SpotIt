class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :game_id, index: true
      t.timestamps null: false
    end
  end
end
