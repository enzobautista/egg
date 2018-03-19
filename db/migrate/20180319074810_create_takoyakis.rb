class CreateTakoyakis < ActiveRecord::Migration[5.1]
  def change
    create_table :takoyakis do |t|
      t.integer :price
      t.integer :quantity_oct

      t.timestamps
    end
  end
end
