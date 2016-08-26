class SecretsController < ApplicationController
  # before_action :require_login
  def show
    if current_user.nil?
      redirect_to new_session_path
    else 
      @username = current_user
      render 'show.html.erb'
    end
  end

  # private
  #   def require_login
  #     return head(:forbidden) unless session.include? :name    
  #   end  
end
