class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find_by(name: user_params[:name]).try(:authenticate, user_params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: "Belépve!"
    else
     flash.now[:login_error] = "invalid username or password"
     render "new"
    end
   end
   
   private
    def user_params
     params.require(:session).permit(:name, :password)
    end
end
