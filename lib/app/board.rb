$:.unshift File.expand_path('./../lib', __FILE__)
require 'board_case'
require 'game'
require 'application'
require 'player'
require 'show'

#La classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
class Board
  
  attr_accessor :array_boardcase

#Quand la classe s'initialize, elle doit créer 9 instances BoardCases
#Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  def initialize
  	@a1 = BoardCase.new("A1")
  	@b1 = BoardCase.new("B1")
  	@c1 = BoardCase.new("C1")
  	@a2 = BoardCase.new("a2")
  	@b2 = BoardCase.new("b2")
  	@c2 = BoardCase.new("c2")
  	@a3 = BoardCase.new("a3")
  	@b3 = BoardCase.new("b3")
  	@c3 = BoardCase.new("c3")

  	array_boardcase = [[@a1, @b1, @c1],
                       [@a2, @b2, @c2],
                       [@a3, @b3, @c3]]
  end

 #Une méthode qui :
 #1) demande au bon joueur (current_player) ce qu'il souhaite faire
 #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  def play_turn

    puts "#{current_player.name}, quel case tu choisi ?" #A1, A2, A3, etc
    print "> "
    board_case = gets.chomp

    if board_case == "A1"
    	@a1 = current_player.symbol
    elsif board_case == "B1"
    	@b1 = current_player.symbol 
    elsif board_case == "C1"
    	@c1 = current_player.symbol
    elsif board_case == "A2"
      @a2 = current_player.symbol
    elsif board_case == "B2"
      @b2 = current_player.symbol
    elsif board_case == "C2"
      @c2 = current_player.symbol
    elsif board_case == "A3"
      @a3 = current_player.symbol
    elsif board_case == "B3"
      @b3 = current_player.symbol
    elsif board_case == "C3"
      @c3 = current_player.symbol
    end

  end

 #une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  def victory?
    if @a1 == "o" && @a2 == "o" && @a3 == "o" || @b1 == "o" && @b2 == "o" && @b3 == "o" || @c1 == "o" && @c2 == "o" && @c3 == "o"
      return true
    elsif @a1 == "x" && @a2 == "x"  && @A3. == "x" || @b1 == "x" && @b2 == "o" && @b3 == "o" || @c1 == "x" && @c2 == "x" && @c3 == "x"
      return true
    elsif @a1 == "o" && @b1 == "o" && @c1 == "o" ||  @a2 == "o" && @b2 == "o" && @c2 == "o" ||  @a3 == "o" && @b3 == "o" && @c3 == "o"
      return true
    elsif @a1 == "x" && @b1 == "x" && @c1 == "x" ||  @a2 == "x" && @b2 == "x" && @c2 == "x" ||  @a3 == "x" && @b3 == "x" && @c3== "x"
      return true
    elsif @a1 == "o" && @b2 == "o" && @c3 == "o" || @a1 == "x" && @c2 == "x" && @b3 == "x"
      return true
    elsif @a3 == "o" && @b2 == "o" && @c1 == "o"|| @a3 == "x" && @b2 == "x" && @c1 == "x"
      return true
    end
  end    


end 
 
