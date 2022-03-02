class SessionsController < ApplicationController
  def new
  end
  def logout
    session[:user_id] = nil
    redirect_to root_url, notice: "Kilépés OK!"
end
  def create
   user = User.find_by(username: user_params[:username].downcase).try(:authenticate, user_params[:password])
   if user
    session[:user_id] = user.id
    redirect_to :home_start
   else
    flash[:error] = 'Hibás Username / Password páros'
    redirect_to :signin
   end
  end
  
  private
   def user_params
    params.require(:session).permit(:username, :password, :email)
   end
end
