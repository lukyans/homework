class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

def count
  cards.count
  require 'pry'; binding.pry
  end
end