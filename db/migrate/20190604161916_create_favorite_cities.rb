class CreateFavoriteCities < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_cities do |t|
      t.string :name
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
