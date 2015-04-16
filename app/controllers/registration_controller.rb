class RegistrationController < Devise::RegistrationsController


	def create
		invites = ["abhiramesh@gmail.com", "hoefer.philipp@gmail.com", "giulio.brandizzi@live.it", "an20gwyn@gmail.com", "andrea.raschella@hotmail.it"]
		if invites.include? params[:user][:email]
			super
		else
			flash[:error] = "We are currently an invite-only organization"
			redirect_to root_path
		end
	end

end

