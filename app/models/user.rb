class User < ActiveRecord::Base
  has_and_belongs_to_many :trips, :join_table => :users_trips

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: {minimum: 3}

  has_secure_password
  has_secure_token

  def joined?(trip)
    self.trips.include?(trip)
  end

  def invalidate_token
    self.update_columns(token: nil)
  end
end
