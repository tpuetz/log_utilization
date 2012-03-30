class Organization < ActiveRecord::Base
	has_many :employees
	has_many :intakes, :through => :employees
end
