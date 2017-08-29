class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.belongs_to :customer

      t.timestamps null: false
    end
  end
end
