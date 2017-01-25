ready_to_quit = false 

puts "HELLO, THIS IS A GROCERY STORE!"
goodbye = 0

until ready_to_quit 
question = gets.chomp
if question.empty?
    puts "HELLO!?"
    
elsif question == question.downcase
    puts "I'M HAVING A HARD TIME HEARING YOU"


elsif question == "GOODBYE" && goodbye == 0
    puts "ANYTHING ELSE I CAN HELP WITH?"
    goodbye+=1

elsif question == "GOODBYE" && goodbye == 1
    puts "THANK YOU FOR CALLING!"
    ready_to_quit = true

elsif question == question.upcase
    puts "NO, THIS IS NOT A PET STORE."
    

    end
end
