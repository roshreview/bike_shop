class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :serial_number
      t.belongs_to :store

      t.timestamps null: false
    end
  end
end
