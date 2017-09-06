class User < ApplicationRecord

	has_many :posts
	has_secure_password

	def admin?
		if self == nil
			false
		else
			self.role == 'admin'
		end
	end

end
