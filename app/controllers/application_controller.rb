class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Pundit
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end

  def default_url_options # /posts/new -> /posts/new?locale=en
    { locale: I18n.locale }
  end

  def set_current_user
    User.current_user = User.find_by_id(session[:user_id])
    yield
  ensure
    # to address the thread variable leak issues in Puma/Thin webserver
    User.current_user = nil
  end
end
