class CreateFavoriteLists < ActiveRecord::Migration
  def change
    create_table :favorite_lists do |t|

      t.timestamps null: false
    end
  end
end
