class CreateTripsPlaces < ActiveRecord::Migration
  def change
    create_table :trips_places, id: false do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :place, index: true
    end
  end
end
