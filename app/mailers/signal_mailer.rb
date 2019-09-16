class SignalMailer < ApplicationMailer
		# default to: "thronetechnology@gmail.com"
	default to: "thronetechnology@gmail.com"
	

	def contact_email(first_name, last_name, email, description)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@phone_number = phone_number
		@telegram_username = telegram_username

		mail(from: email, subject: "New Signal User Request!")
	end
end
