class SignController < ApplicationController
    def signup
        @user = User.new
    end

    def signin 
    end

    def new
        @user = User.new
       end
       
    def create
        @user = User.create(user_params)
        if @user.save
         redirect_to signin_url
    else
         render "signup"
    end
end
       
       private
        def user_params
         params.require(:user).permit(:username, :password, :password_confirmation, :email)
        end

end
