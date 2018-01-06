class User < ActiveRecord::Base
  has_and_belongs_to_many :trips, :join_table => :users_trips

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: {minimum: 3}

  has_secure_password
  has_secure_token



  def invalidate_token
    self.update_columns(token: nil)
  end
end
