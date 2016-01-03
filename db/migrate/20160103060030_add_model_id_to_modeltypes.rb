class AddModelIdToModeltypes < ActiveRecord::Migration
  def change
    add_column :modeltypes, :model_id, :integer
  end
end
