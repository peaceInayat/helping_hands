class AddOrphanageIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :orphanage_id, :integer
  end
end
