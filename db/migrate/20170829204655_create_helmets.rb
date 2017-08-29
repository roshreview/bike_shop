class CreateHelmets < ActiveRecord::Migration
  def change
    create_table :helmets do |t|
      t.integer :size
      t.belongs_to :bike

      t.timestamps null: false
    end
  end
end
