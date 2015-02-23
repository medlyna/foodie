class CreateAllergens < ActiveRecord::Migration
  def change
    create_table :allergens do |t|

      t.timestamps null: false
    end
  end
end
