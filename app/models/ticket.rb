class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :town
  belongs_to :town
  belongs_to :ticket_type
end
