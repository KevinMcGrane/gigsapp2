class Venue < ActiveRecord::Base
	has_many :gigs, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :name, presence: true
	validates :location, presence: true
	validates :capacity, presence: true
	geocoded_by :location
	after_validation :geocode, :if => :location_changed?
	
	def average_stars
	
		comments.average(:stars)
	
	end
end
