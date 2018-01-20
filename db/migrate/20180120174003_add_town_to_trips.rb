class AddTownToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :town, index: true
  end
end
