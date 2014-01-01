class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages, force: true do |t|
      t.string :name

      t.timestamps
    end
  end
end
