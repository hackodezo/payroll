class Designation < ActiveRecord::Base
	has_many :employees
	validates_presence_of :name
end
