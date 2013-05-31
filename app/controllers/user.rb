get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by_name(params[:name])

  if !@user
    redirect '/login'
  else
    login
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do 
  @user = User.find_by_name(params[:name])

  if !@user
    @user = User.create(name: params[:name], password: params[:password], email: params[:email])
  end
  
  login 
end

get '/logout' do
  session.clear
  # what route to redirect to?
end
