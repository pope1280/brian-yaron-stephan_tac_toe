get '/' do
  # Look in app/views/index.erb
  @user = User.find_by_id(session[:user_id])
  erb :index
end
