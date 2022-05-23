class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :code
      t.string :name
      t.integer :number
      t.integer :district_id
      t.integer :state_id
      t.integer :bathroom_qty
      t.integer :bedroom_qty
      t.integer :parking_slot
      t.integer :sqm
      t.integer :parking_slot
      t.integer :price
      t.datetime :available_in
      t.text :description
    end
  end
end