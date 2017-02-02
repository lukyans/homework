class Round
  attr_reader :deck, :guesses, :current_card, :number_correct, :record_guess
  def initialize(deck)
    @deck = deck
    @guesses = []#collect guesses enetered by user
    @current_card = deck.cards[0]#takes first element 
    @record_guess = []
    @number_correct = 0 
  end
  
  def record_guess(response)
    index = 0
    guess = Guess.new(response, deck.cards[index])
    guesses << guess
    @current_card = deck.cards[index + 1]  
    response
  end

  def number_correct
    correct = 0
    guesses.each do |guess|
      if guess.correct? 
        correct +=1     
      end
    end
    correct 
   end
  
  def percent_correct
    ((number_correct.to_f / guesses.length)*100).to_i
  end

  def start
    puts "Welcome! You're playing with #{deck.cards.length} cards."
    puts "-------------------------------------------------"
      deck.cards.each do |card|
        puts "This is card number #{guesses.length + 1} out of #{deck.cards.length}."
        puts "#{card.question}"
        response = gets.chomp
        record_guess(response)
        puts guesses.last.feedback
      end
    message = "GAME OVER!"
    puts message.center(16, ' ').center(28, '*')
    puts "You had #{number_correct} correct guesses out of #{deck.cards.length} for a score of #{percent_correct}%."
  end
 end
  