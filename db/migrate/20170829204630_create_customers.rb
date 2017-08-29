class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.belongs_to :store

      t.timestamps null: false
    end
  end
end
