class AddIsAdminToTripsUsers < ActiveRecord::Migration
  def change
    add_column :trips_users, :is_admin, :boolean
  end
end
