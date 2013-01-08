class Car < ActiveRecord::Base
	validates :Model, :presence => true
	validates :Owner, :presence => true
	validates :Year, :presence => true
	validates :Engine, :presence => true
	validates :Price, :presence => true
end
