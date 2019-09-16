class SignalUsersController < InheritedResources::Base

	def new
		@signal_user = SignalUser.new
	end

	def create
	    @signal_user = SignalUser.new(params[:contact])
	    @signal_user.request = request
	    if @signal_user.deliver
	      flash.now[:error] = nil
	  redirect_to root_path, notice: 'Message sent successfully'
	    else
	      flash.now[:error] = 'Cannot send message'
	      render :new
	    end
	end


  private

    def signal_user_params
      params.require(:signal_user).permit(:first_name, :last_name, :email, :phone_number, :telegram_username)
    end

end
