class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :description
      t.belongs_to :bike

      t.timestamps null: false
    end
  end
end
