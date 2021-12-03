class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.integer :price_in_us_dollars
      t.integer :museum_id
      t.integer :artist_id
    end
  end
end
