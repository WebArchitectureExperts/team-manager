class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :address_type

      t.timestamps
    end
  end
end
