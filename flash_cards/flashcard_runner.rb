require "./lib/guess"
require "./lib/card"
require "./lib/deck"
require "./lib/round"
require "./lib/card_generator"

#card_1 = Card.new("What is the capital of Alaska?", "Juneau")
#card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
generator = CardGenerator.new
deck = Deck.new(generator.cards)
#deck = Deck.new([card_1, card_2])
round = Round.new(deck)

round.start
