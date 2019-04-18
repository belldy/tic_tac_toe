$:.unshift File.expand_path('./../lib', __FILE__)
require 'game'

#la classe a 2 attr_reader, son nom et sa valeur (X ou O).
class Player

  attr_accessor :name, :symbol

#doit régler son nom et sa valeur
  def initialize
    puts "Quel est ton prénon ?"
    puts ">  "
    @name = gets.chomp.to_s
    puts "Choisi x ou o :"
    puts ">  "
    @symbol = gets.chomp.to_s 
  end
end



