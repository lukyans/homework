require 'pry'
class Guess
  attr_reader :response, :card
  def initialize(response, card)#In card_2: response == saturn, card == ["Which planet is closest to the sun?", "Mercury"]
    @card = card 
    @response = response 
   
  end

  def correct?
      response == card.answer 
      
   #binding.pry
  end

  def feedback
    if correct? == true
    "Correct!"
    else
    "Incorrect!"
    end 
  end

  
end   