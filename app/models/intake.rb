class Intake < ActiveRecord::Base
	belongs_to :employee
	has_many :intake_notes

end
