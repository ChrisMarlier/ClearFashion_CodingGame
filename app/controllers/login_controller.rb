class LoginController < ApplicationController
  def index
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      redirect_to "/fight"
    end
  end



def check
  @current_user = User.where(name: params[:name], password: params[:password]).first
  if @current_user
      session[:user_id] = @current_user.id
    redirect_to "/fight"
  else
    session[:user_id] = nil
    flash[:info] = "Identifiants incorrects"
    redirect_to "/login"
  end
end

  def disconnect
    session[:user_id] = nil
    redirect_to "/login"
  end


end
