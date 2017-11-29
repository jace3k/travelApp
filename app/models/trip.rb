class Trip < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :trips_users
  has_and_belongs_to_many :places, :join_table => :trips_places
end
