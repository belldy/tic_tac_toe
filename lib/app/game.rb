$:.unshift File.expand_path('./../lib', __FILE__)
require 'player'
require 'board'

#La classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
class Game
	attr_accessor :current_player, :status, :board, :players_array, :count_turn

 
 #créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  def initialize

    @player1 = Player.new("Josiane")
    @player2 = Player.new("José")
    @board = Board.new
    @current_player = player1
    @status = "on going"
    @players_array = [@player1, @player2]
    @count_turn = 0

  end

 
 #méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  def turn(current_player) #turn commence avec le player1
    while @count_turn <= 9

      #affiche le plateau :
      show.new.show_board(board) 

      #joueur choisi une case / validates si boardcase est disponible
      #appelle play_turn in board
 
      #vérifie si un joueur a gagné
      #appelle victory? in board

      #passe au joueur suivant si la partie n'est pas finie
      if current_player == player1
      current_player = player2
      else
      current_player = player1
      end

      @count_turn += 1

     end
    
  end

#relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  def new_game
    puts "Veux tu rejouer : Y/N?"
    puts "> "
    new_game = gets.chomp.to_s
    if new_game == "Y"
    #initialise un nouveau board
  	Board.new
    end

  end

#permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  def game_end
    puts "La partie est finie !"
  end

end

