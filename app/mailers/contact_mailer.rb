class ContactMailer < ApplicationMailer
	# default to: "thronetechnology@gmail.com"
	# default to: "expgcapital@gmail.com"
	default to: "brunelleryan56@gmail.com"

	def contact_email(first_name, last_name, email, description)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@description = description

		mail(from: email, subject: "Support Message!")
	end
end
