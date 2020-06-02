class SecretsController < ApplicationController
    before_action :require_login

    def show
    end
 
  def index
  end
 
  def create
  end
 
    private

    def require_login
        return head(:forbidden) unless session.include? :name
    end

end