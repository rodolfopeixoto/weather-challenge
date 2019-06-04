class CreateFavoriteCities < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_cities do |t|
      t.string :name
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
