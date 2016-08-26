class SessionsController < ApplicationController

  def index
    if current_user.nil?
      redirect_to new_session_path
    else
      render 'index.html.erb'
    end
  end

  def new
    
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end     
  end

  def destroy
    unless current_user.nil?
      session[:name] = nil
    end
    redirect_to sessions_path
  end
end
