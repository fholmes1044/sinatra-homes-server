class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :full_name 
      t.string :email 
      t.string :phone_number 
      t.string :address
      t.boolean :verified 
    end 
  end
end
