class Employee < ActiveRecord::Base
	belongs_to :organization
	has_many :intakes
end
