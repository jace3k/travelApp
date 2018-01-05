class Place < ActiveRecord::Base
  belongs_to :type
  belongs_to :town
  has_and_belongs_to_many :trips, :join_table => :trips_places
  has_many :reviews

  def added?(trip)
    self.trips.include?(trip)
  end
end
