class CreateDietRestrictions < ActiveRecord::Migration
  def change
    create_table :diet_restrictions do |t|

      t.timestamps null: false
    end
  end
end
