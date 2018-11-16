class CreateMenuImages < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_images do |t|
      t.string :name
      t.string :title
      t.timestamps
    end
  end
end
