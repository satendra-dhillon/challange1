class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.float :offer_price
      t.string :offer_by
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :offers, :products
  end
end
