class ContactsController < InheritedResources::Base

	def new
		@contact = Contact.new
	end

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
