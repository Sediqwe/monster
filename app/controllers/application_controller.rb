class ApplicationController < ActionController::Base
helper_method :current_user  
add_flash_types :info, :error, :warning
def current_user
  if session[:user_id]
    @current_user ||= User.find(session[:user_id])
  else
    @current_user = nil
  end
end
  private
def authorized?
  return if current_user.present?
  flash[:error] = 'Előbb lépj be!.'
  redirect_to login_signin_url
  end
  def record_attempts(note)
    @activity = ActivityLog.new
    @activity.note = note
    @activity.browser = request.env['HTTP_USER_AGENT']
    @activity.ip_address = request.env['REMOTE_ADDR']
    @activity.controller = controller_name 
    @activity.action = action_name 
    @activity.params = params.inspect
    @activity.save
end
  def record_activity(note)
    @activity = ActivityLog.new
    @activity.user_id = current_user.id
    @activity.note = note
    @activity.browser = request.env['HTTP_USER_AGENT']
    @activity.ip_address = request.env['REMOTE_ADDR']
    @activity.controller = controller_name 
    @activity.action = action_name 
    @activity.params = params.inspect
    @activity.save
end
end


