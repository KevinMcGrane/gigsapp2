class User < ActiveRecord::Base
has_many :gigs, dependent: :destroy
has_many :tickets, dependent: :destroy
has_many :comments
has_many :orders
has_secure_password
validates_uniqueness_of :email
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

def age
  now = Time.now.utc.to_date
  now.year - dob.year - (dob.to_date.change(:year => now.year) > now ? 1 : 0)
end
end
