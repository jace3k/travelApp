class User < ActiveRecord::Base
  has_secure_password
  has_secure_token

  has_and_belongs_to_many :trips, :join_table => :users_trips
  has_many :notifies
  
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: {minimum: 3}, allow_nil: true


  def invalidate_token
    self.update_columns(token: nil)
  end
end
