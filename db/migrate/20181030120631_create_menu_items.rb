class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      
      t.string :item_name
      t.string :item_price
      t.integer :image_id
	    t.integer :special_category_id
      t.integer :spicy_level
      t.integer :offer_id
      t.text :item_description
      t.text :item_ingredients
      t.boolean :item_active
      t.integer :preparation_time
      t.string :meal_type_id


      t.timestamps
    end
  end
end
