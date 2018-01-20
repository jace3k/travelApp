class Town < ActiveRecord::Base
  has_many :places
end
