counter = 0

while counter != 1000
  puts counter
  
  num3 = counter % 3
  num5 = counter % 5
  num7 = counter % 7
if num3 == 0 && num5 == 0 && num7 == 0
  puts "#{counter} SuperFizzBuzz"
 end

num3 = counter % 3
num7 = counter % 7
if num3 == 0 && num7 == 0
  puts "#{counter} SuperFizz"
 end

num5 = counter % 5
  num7 = counter % 7
if num5 == 0 && num7 == 0
  puts "#{counter} SuperBuzz"
 end

num3 = counter % 3
  num5 = counter % 5
if num3 == 0 && num5 == 0
  puts "#{counter} FizzBuzz"
 end

num3 = counter % 3
if num3 == 0 
  puts "#{counter} Fizz"
 end

num5 = counter % 5
if num5 == 0 
  puts "#{counter} Buzz"
 end

num7 = counter % 7
if num7 == 0
  puts "#{counter} Super"
  end 

counter += 1
end