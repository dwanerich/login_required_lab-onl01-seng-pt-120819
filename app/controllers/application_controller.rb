class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :require_login


  def current_user
    session[:name]
  end

  def home
    redirect_to controller: 'sessions', action: 'new' unless session[:name]

  end

  private

    def require_login
        return head(:forbidden) unless session.include? :name
    end

end
