class Employee < ActiveRecord::Base
	belongs_to :department
	belongs_to :designation
	has_many :employee_salaries
	validates_presence_of :name,:dob,:address,:date_of_joining,:designation_id,:department_id,:gender,:country
end
