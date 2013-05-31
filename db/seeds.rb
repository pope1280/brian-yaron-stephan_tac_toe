user1 = User.create(name: "player 1", password: "123", email: "p1@gmail.com")
user2 = User.create(name: "player 2", password: "123", email: "p2@gmail.com")
game  = Game.create(name: "tictactoe", board_size: 9)
match = Match.create(board: "000000000", turn: "1")


match.users << user1
match.user2_id = user2.id 
match.games << game
