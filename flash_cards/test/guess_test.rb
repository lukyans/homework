gem 'minitest', '~>5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/guess"
require_relative "../lib/card"

class GuessTest < Minitest::Test
  def test_guess_contains_a_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal card, guess.card
  end

  def test_response_is_correct
      card = Card.new("What is the capital of Alaska?", "Juneau")
      guess = Guess.new("Juneau", card)
      assert_equal true, guess.correct?
  end

  def test_feedback
      card = Card.new("What is the capital of Alaska?", "Juneau")
      guess = Guess.new("Juneau", card)
      assert_equal "Correct!", guess.feedback
    end

  def test_guess_contains_cards
      card_2 = Card.new("Which planet is closest to the sun?", "Mercury")#creating variable instance of Class Card. It passes two arguments to the Class Cards and make changes to it.  
      guess = Guess.new("Saturn", card_2)
     assert_equal card_2, guess.card
  end

  def test_response_is_correct
      card_2 = Card.new("Which planet is closest to the sun?", "Mercury")#creating variable instance of Class Card. It passes two arguments to the Class Cards and make changes to it.  
      guess = Guess.new("Saturn", card_2)
      refute_equal true, guess.correct?
  end

  def test_feedback
      card_2 = Card.new("Which planet is closest to the sun?", "Mercury")#creating variable instance of Class Card. It passes two arguments to the Class Cards and make changes to it.  
      guess = Guess.new("Saturn", card_2)
      refute_equal "Correct!", guess.feedback
    end
end