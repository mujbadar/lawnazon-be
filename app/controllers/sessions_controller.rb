class SessionsController < ApplicationController
  def new
  end
  def create
    account = Account.find_by(user_name: params[:user_name)
    if account && account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:account_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
