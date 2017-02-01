class Round
  attr_reader :deck
  def initialize(deck)
    @deck = deck
  end

  def guesses
   []
  end

  def current_card
  deck
  require'pry'; binding.pry
   end
end
