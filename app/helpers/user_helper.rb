 helpers do

  def login
    @user = User.find_by_username(params[:username])
   
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
