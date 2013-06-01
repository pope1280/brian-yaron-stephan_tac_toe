get '/' do
  # Look in app/views/index.erb
  @user = User.find_by_id(session[:user_id])
  erb :index
end

post '/game' do 
  current_user
  game = Match.create(user_id: @user.id, game_id: 1, board: "000000000", turn: "1")
  redirect "/game/#{game.id}"
end