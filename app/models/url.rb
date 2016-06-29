class Url < ActiveRecord::Base
	before_create :shorten
	validates :long_url, uniqueness: true
	validate :url_validation

	def shorten
		self.short_url = SecureRandom.hex(4) 
		#self refers to instance object
	end

	def url_validation
		errors.add(:long_url, "Invalid input!") if self.long_url.match(/http:\/\/.*/)
== nil
	end
end
