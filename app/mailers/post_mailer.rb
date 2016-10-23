class PostMailer < ApplicationMailer
	default from: "saithejanv@gmail.com"
	
	def create_post(user,post)
		@user = user
		@post = post

		mail(to: @user.email, subject: "Post cretaed successfully")
	
	end

	def update_post(user)
	end

end
