class Ticket < ActiveRecord::Base
belongs_to :gig
belongs_to :user
validates :name, presence: true
end
