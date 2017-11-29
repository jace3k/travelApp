class Place < ActiveRecord::Base
  belongs_to :town
  belongs_to :place_name
  has_and_belongs_to_many :trips, :join_table => :trips_places
end
