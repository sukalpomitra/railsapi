class CreateModeltypes < ActiveRecord::Migration
  def change
    create_table :modeltypes do |t|
      t.string :name
      t.string :model_type_slug
      t.string :model_type_code
      t.string :integer
      t.integer :base_price

      t.timestamps null: false
    end
  end
end
