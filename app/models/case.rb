class Case < ActiveRecord::Base
	belongs_to :employee
	has_many :case_notes
end
