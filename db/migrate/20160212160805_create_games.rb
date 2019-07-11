class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :state, default: '["", "", "", "", "", "", "", "", ""]', array: true

      t.timestamps null: false
    end
  end
end
