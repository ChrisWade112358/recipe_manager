module Users
    class RegistrationsController < Devise::RegistrationsController
        private

        def sign_up_params
            params.require(:user).permit(:name, :email, :password, :password_confirmations)
        end

        def account_update_params
            params.require(:user).permit(:name, :email, :password, :password_confirmations)
        end
    end
end
