class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.belongs_to :store
      t.belongs_to :manager

      t.timestamps null: false
    end
  end
end
