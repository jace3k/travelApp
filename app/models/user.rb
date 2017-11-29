class User < ActiveRecord::Base
  has_and_belongs_to_many :trips, :join_table => :trips_users
  validates :username, presence: true, length: {minimum: 3, maximum: 50 }, uniqueness: true
  validates :password, length: {minimum: 3}
  has_secure_password

  def follows?(trip)
    self.trips.include?(trip)
  end

end
