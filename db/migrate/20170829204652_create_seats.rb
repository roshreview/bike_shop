class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :size
      t.string :material
      t.belongs_to :bike

      t.timestamps null: false
    end
  end
end
