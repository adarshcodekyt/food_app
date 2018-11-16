class CreateSpecialCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :special_categories do |t|
      t.string :special_category_name
      t.text :special_category_description
      t.timestamps
    end
  end
end
