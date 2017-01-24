#Create variable "store" that hold space to input info as a string
#hit enter
#Check if variable is empty 
#if variable is empty then put message with all upper-case letters "HELLO, THIS IS A GROCERY STORE!"

#Create a variable to enter a question for the store from the client as a string 
#check if info contains any lower-case letters
#if information is entered with ANY lower-case letters
     #Then print out with ALL upper-case letters "I AM HAVING A HARD TIME HEARING YOU"
#check if info that held in variable contains ALL upper-case letters 
 #Elseif information is entered in all upper-case letters
    #Print out with all upper-case letters "NO, THIS IS NOT A PET STORE"
    #if you enter "GOODBYE"
    #PUT MESSAGE "ANYTHING ELSE I CAN HELP WITH?"
    #Add counter to count how many times "GOODBYE" is received
    #second time you say "GOODBYE"
    #put message "THANK YOU FOR CALLING!"
    #end 

store = gets.chomp
if store.empty?
    puts "HELLO, THIS IS A GROCERY STORE!"
end 
question = gets.chomp.to_s

if question.downcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
    elsif question.upcase
    puts "NO, THIS IS NOT A PET STORE"
    end

question = gets.chomp
if question == "GOODBYE"

        puts "ANYTHING ELSE I CAN HELP WITH?"
end

if question == "GOODBYE"
    puts "THANK YOU FOR CALLING!"

end
