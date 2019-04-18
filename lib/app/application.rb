$:.unshift File.expand_path('./../lib', __FILE__)
require 'game'
require 'board'
require 'player'
require 'board_case'
require 'views/show'

class Application
#méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
  def perform
    puts "Tic Tac Toe"

    @game = Game.new

  end

end
