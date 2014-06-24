class UsersController < VerifiedController
	def index
		@users = User.all
	end
end
