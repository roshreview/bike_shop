class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.integer :diameter
      t.belongs_to :bike

      t.timestamps null: false
    end
  end
end
