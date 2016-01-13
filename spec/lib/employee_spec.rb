require "spec_helper"
require "employee"

describe Employee do
	it "is called ash" do
		employee = Employee.new
		employee.name.should == 'ash'
	end
end
