class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :title 
      t.string :category
      t.string :description 
      t.integer :price 
      t.integer :guest_capacity 
      t.string :location 
      t.integer :host_id
    end
  end
end
