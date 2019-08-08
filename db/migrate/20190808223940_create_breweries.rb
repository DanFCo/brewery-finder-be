class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :brewery_type
      t.string :street
      t.string :city
      t.string :state
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :longitude
      t.string :latitude
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
