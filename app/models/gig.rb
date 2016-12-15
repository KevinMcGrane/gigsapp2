class Gig < ActiveRecord::Base
	belongs_to :venue
	has_many :tickets, dependent: :destroy
	validates :gig_name, presence: true
	validates :artist, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
	mount_uploader :attachment, AttachmentUploader
	
	def self.search(query)
		where("gig_name LIKE ?", "%#{query}%") 
	end




end
