 helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def login
    p params
    @user = User.find_by_name(params[:name])
   
    if @user
      if @user.password == params[:password]
        session[:user_id] = @user.id
        redirect '/'
      else
        redirect '/signup'
      end
    end
  end

end
