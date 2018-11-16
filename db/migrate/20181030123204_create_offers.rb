class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :offer_name
      t.text :offer_description
      t.float :discount
      t.string :coupon_code
      t.integer :validate_form
      t.integer :validate_till


      t.timestamps
    end
  end
end
