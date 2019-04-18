

class Show

#TO DO : affiche sur le terminal l'objet de classe Board en entrée. 
#S'active avec un Show.new.show_board(instance_de_Board)

  #Show.new.show_board(board)
  
  def show_board(board)
   puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
   puts "-----------"
   puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
   puts "-----------"
   puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

end

