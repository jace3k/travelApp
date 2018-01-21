class ChangeCoordsToAddressTowns < ActiveRecord::Migration
  def change
    add_column :places, :address, :string
    remove_column :places, :coords
  end
end
