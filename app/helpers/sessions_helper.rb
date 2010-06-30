module SessionsHelper

  def sign_in(user)
    #user.remember_me!
    #cookies[:remember_token] = { :value => user.remember_token,
    #                             :expires => 20.years.from_now.utc }

    session[:current_user_id] = user.id
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end

#  def user_from_remember_token
#    remember_token = cookies[:remember_token]
#    User.find_by_remember_token(remember_token) unless remember_token.nil?
#  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    session[:current_user_id] = nil
    self.current_user = nil
  end
end
