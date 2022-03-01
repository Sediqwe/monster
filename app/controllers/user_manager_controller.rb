class UserManagerController < ApplicationController
  def new
    @user = User.new
   end
   
   def create
    @user = User.create(user_params)
    if @user.save
     redirect_to :sessions_new
     session[:user_id] = @user.id
    else
     render "new"
    end
   end
   
   private
    def user_params
     params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end
end
