class RegistrationsController < Devise::RegistrationsController
    def new
      flash[:danger] = 'Silly rabbit, registrations are for kids!'
      redirect_to root_path
    end

    def create
      flash[:danger] = 'Silly rabbit, registrations are for kids!'
      redirect_to root_path
    end

    private

    def sign_up_params
        params.require(:user).permit(:first_name, :last_name, :image, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:first_name, :last_name, :image, :email, :password, :password_confirmation, :current_password)
    end
end
