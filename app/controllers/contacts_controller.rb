class ContactsController < InheritedResources::Base

	def new
		@contact = Contact.new
	end

	# def create
	# 	@contact = Contact.new(contact_params)

	# 	if @contact.save
	# 		redirect_to root_path
	# 		first_name = params[:contact][:first_name]
	# 		last_name = params[:contact][:last_name]
	# 		email = params[:contact][:email]
	# 		description = params[:contact][:description]
	# 		ContactMailer.contact_email(first_name, last_name, email, description)
	# 		flash[:success] = "Thanks for the message, we will be in touch soon!"
	# 	else
	# 		redirect_to new_contact_path
	# 		flash[:danger] = "Opps, there was a problem! Please fill out all the fields"

	# 	end
	# end

	def create
	    @contact = Contact.new(params[:contact])
	    @contact.request = request
	    if @contact.deliver
	      flash.now[:error] = nil
	  redirect_to root_path, notice: 'Message sent successfully'
	    else
	      flash.now[:error] = 'Cannot send message'
	      render :new
	    end
	 end

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :description)
    end

end
