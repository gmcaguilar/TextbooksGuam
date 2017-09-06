class Post < ApplicationRecord

	belongs_to :user

	def editable?(user)
		if user == nil
			false
		else
			user.admin? || self.user == user
		end
	end

end
