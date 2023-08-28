class SessionController < ApplicationController
  def new
  end

  def create
    if user.authenticate_with_credentials(params[:email],params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end

  end
  def authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
