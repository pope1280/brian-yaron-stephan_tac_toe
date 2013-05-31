#GAME ROUTES

get '/game/:game_id' do
  current_user
  erb :game

end

get '/game/:game_id/turn' do |game_id|
  current_user
  @match = Match.find(game_id)
  content_type :json
  @match.player_turn(@user.id).to_json
end
