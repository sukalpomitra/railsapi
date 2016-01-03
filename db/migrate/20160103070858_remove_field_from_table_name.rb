class RemoveFieldFromTableName < ActiveRecord::Migration
  def change
    remove_column :modeltypes, :integer, :string
  end
end
