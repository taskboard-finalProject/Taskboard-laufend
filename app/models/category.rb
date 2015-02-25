class Category < ActiveRecord::Base

	has_many :tasks
	def to_param
		"#{id}-#{name.parameterize}"
	end
end
