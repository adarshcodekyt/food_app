class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.text :address1
      t.text :address2
      t.string :landmark
      t.integer :zipcode
      t.timestamps
    end
  end
end
