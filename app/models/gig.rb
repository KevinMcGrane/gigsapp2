class Gig < ActiveRecord::Base
	belongs_to :venue
	has_many :tickets, dependent: :destroy
	validates :gig_name, presence: true
	validates :artist, presence: true
	validates :date, presence: true
	validates :start_time, presence: true

end
