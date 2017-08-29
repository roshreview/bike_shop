class CreateChains < ActiveRecord::Migration
  def change
    create_table :chains do |t|
      t.integer :length
      t.belongs_to :bike

      t.timestamps null: false
    end
  end
end
