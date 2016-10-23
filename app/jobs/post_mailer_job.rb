class PostMailerJob < ActiveJob::Base
  queue_as :default

  def perform(user,post)
  	PostMailer.create_post(user,post).deliver
  	#Rails.logger.debug "test post mailer job log"
    # Do something later
  end
end
