class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :gender
      t.integer :height
      t.integer :weight
      t.integer :jersey

      t.timestamps
    end
  end
end
