gem 'minitest', '~>5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/guess"
require_relative "../lib/card"
require_relative "../lib/deck"
require_relative "../lib/round"

class DeckTest < Minitest::Test
 
  def test_to_deck_consist_of_cards
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck ,round.deck
  end

  def test_to_guess_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [] ,round.guesses
  end

  def test_current_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck ,round.current_card
    #<Card:0x007ffdf1820a90 @answer="Juneau", 
    #@question="What is the capital of Alaska?">
  end

end
