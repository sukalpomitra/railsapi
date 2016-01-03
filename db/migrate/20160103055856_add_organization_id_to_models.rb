class AddOrganizationIdToModels < ActiveRecord::Migration
  def change
    add_column :models, :organization_id, :integer
  end
end
