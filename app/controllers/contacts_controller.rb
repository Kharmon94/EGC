class ContactsController < InheritedResources::Base

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)

		respond_to do |format|
	      if @contact.save
	        format.html { redirect_to root_path, notice: 'Thank you so much for contacting us, we will reach you as soon as possible' }
	        format.json { render :new, status: :created, location: :new }
	      else
	        format.html { render :new }
	        format.json { render json: @contact.errors, status: :unprocessable_entity }
	      end
	    end
	end

  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :description)
    end

end
