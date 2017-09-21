class SessionsController < ApplicationController
  # login
  def create
    # omniauth middleware stores oauth data in the request.env instead of params
    auth = request.env["omniauth.auth"]

    # even though this is a login action, an OAuth login can be a login *or* a registration
    #
    # if the user exists, log her in
    # if the user doesn't exist, create her, then log her in
    user = User.find_by(facebook_id: auth['uid']) || User.create_from_facebook(auth)
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     log_in user
     params[:session][:remember_me] == '1' ? remember(user) : forget(user)
     redirect_back_or petfinder_search_path
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end


  # logout
  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out!"
  end
end
