 helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def login
    @user = User.find_by_name(params[:name])
   
    if @user
      if @user.password == params[:password]
        session[:user_id] = @user.id
        #what route?
      else
        #what route ?
      end
    end
  end

  def authenticate?(user_id)
    session[:user_id] == user_id    
  end

end
