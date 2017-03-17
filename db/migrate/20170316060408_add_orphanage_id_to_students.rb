class AddOrphanageIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :orphanage_id, :integer
    add_column :students, :admin_id, :integer
    add_column :students, :zone_id, :integer
  end
end
