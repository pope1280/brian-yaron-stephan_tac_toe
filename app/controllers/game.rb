#GAME ROUTES

get '/game/:game_id' do
  current_user


end

get '/game/:game_id/turn' do |game_id|
  current_user
  @match = Match.find(game_id)
  content_type :json
  @match.player_turn(@user.id).to_json
end


post '/game/:game_id/move/:move_id' do |game_id, move_id|
  current_user
  @match = Match.find(game_id)
  content_type :json
  @match.update_board(move_id).to_json
end