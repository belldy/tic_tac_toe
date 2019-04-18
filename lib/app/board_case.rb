
#La classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
class BoardCase
  attr_accessor :position, :id

 #doit régler sa valeur, ainsi que son numéro de case
  def initialize
  	@position = ""
    @id = id
  end

end
