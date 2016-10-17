class CreateCarWashes < ActiveRecord::Migration
  def change
    create_table :car_washes do |t|
      t.boolean :hot_wax
      t.boolean :full_detail

      t.timestamps null: false
    end
  end
end
