class Course < ActiveRecord::Base
	has_many :members

	validates :name presence: true
end
