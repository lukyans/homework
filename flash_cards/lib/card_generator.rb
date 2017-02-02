class CardGenerator
  def initialize(filename = "cards.txt")
    @filename = filename
  end

  def cards 
    File.open(@filename).readlines.map do |line|
      question, answer = line.strip!.split(",")
      Card.new(question, answer)
    end 
  end 
end
