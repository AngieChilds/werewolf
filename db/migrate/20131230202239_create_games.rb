class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player
      t.boolean :alive, default: true
      t.boolean :werewolf, default: false
      t.integer :votes_against
      t.boolean :voted, default: false
      t.references :village, index: true

      t.timestamps
    end
  end
end
