class Trip < ActiveRecord::Base

  has_and_belongs_to_many :places, :join_table => :trips_places
  has_and_belongs_to_many :users, :join_table => :users_trips
  has_many :posts
  belongs_to :town
  belongs_to :user

  validates_date :start_date
  validates_date :end_date

  validates_date :end_date, :on_or_after => :start_date

  def joined?(user)
    self.users.include?(user)
  end

end
