class Game
     #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :player1, :player2, :board_game

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player1 = Player.new("X")
    @player2 = Player.new("O")
    @board_game = Board.new
  end

  def play(player)
      puts "#{player.name}, please choose a boardcase:"
      choice = gets.chomp
      if @board_game.hash_board.has_key?(choice)
        if @board_game.hash_board.has_value?(" ")
           @board_game.hash_board[move] = player.symbol
        endç
      end
      while !(@board_game.hash_board.has_key?(move)) || @board_game.hash_board[move] != " "
        puts "You need to choose a valid/existing boardcase!"
        move = gets.chomp.to_s
      end
    end
  end
  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end 
  
  def victory?
    #victory player1
    if @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:c1] == @player1.symbol ||
      @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol ||
      @board_game.hash_board[:a3] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol ||
      @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol 
      return @player1
    #victory player2
    elsif @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:c1] == @player2.symbol ||
      @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol ||
      @board_game.hash_board[:a3] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol ||
      @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol 
      return @player2
    else
      return false    
    end
end
