class UsersController < ApplicationController
    
    def support
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to schools_path
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :message)
    end 

end