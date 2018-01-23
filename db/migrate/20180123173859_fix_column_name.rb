class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :notifies, :type, :notify_type
  end
end
