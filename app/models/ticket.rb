class Ticket < ActiveRecord::Base
	belongs_to :gig
	belongs_to :user
	has_many :lineitems
end
