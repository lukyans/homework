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
    assert_equal [], round.guesses
  end

  def test_if_current_card_equals_to_card_1  
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1.answer, round.current_card.answer
    assert_equal card_1.question, round.current_card.question
    #<Card:0x007ffdf1820a90 @answer="Juneau", 
    #@question="What is the capital of Alaska?">
  end

def test_record_guess   
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal  [], round.guesses
    assert_equal  "Juneau", round.record_guess("Juneau")
    assert_equal  1, round.guesses.count
    ##<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 
    #@answer="Juneau", @question="What is the capital of Alaska?">, 
    #@response="Juneau">
  end

  def test_guess_count  
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau")
    round.record_guess("hello")
    assert_equal  2, round.guesses.count
    #=> 1
  end

def test_guesses_first_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau")
    assert_equal  "Correct!", round.guesses.first.feedback
    #=> "Correct!"
  end

  def test_if_number_of_guesses_is_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau")
    assert_equal 1, round.number_correct
    #=> 1
  end

  def test_if_current_card_is_card_2  
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      assert_equal card_1.question, round.current_card.question
      round.record_guess("Juneau")
      assert_equal card_2.question, round.current_card.question
    end

    def test_if_record_guess_is_2 
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      refute_equal "93,000,000", round.record_guess("2")
      #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 
      #@answer="93,000,000", @question="Approximately how many 
      #miles are in one astronomical unit?">, @response="2">
    end

    def test_guess_count_again
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)     
      round.record_guess("93,000,000")
      round.record_guess("Juneau")
      assert_equal 2, round.guesses.count
      #=> 2
    end

    def test_guesses_last_feedback  
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess("93,000,000")
      assert_equal "Incorrect!", round.guesses.last.feedback
      #=> "Incorrect."
    end

    def test_number_of_guesses_is_correct
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess("Juneau")
      assert_equal 1, round.number_correct
      #=> 1
    end

    def test_percent_correct_answers 
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in 
      one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess("Juneau")
      round.record_guess("Junea")
      assert_equal 50, round.percent_correct
      #=> 50
    end
end
