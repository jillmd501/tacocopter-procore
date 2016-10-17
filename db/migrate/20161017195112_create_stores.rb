class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.boolean :sells_beer
      t.integer :zagat_rating

      t.timestamps null: false
    end
  end
end
