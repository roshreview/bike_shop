class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.belongs_to :store

      t.timestamps null: false
    end
  end
end
