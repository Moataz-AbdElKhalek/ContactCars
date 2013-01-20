class User < ActiveRecord::Base
	validates :Name, :presence => true
	validates :Password, :presence => true
	validates :Phone, :presence => true
	has_many :cars
end
