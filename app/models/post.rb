class Post < ApplicationRecord

	belongs_to :user

	def editable?(user)
		user != nil && self.user == user
	end

end
