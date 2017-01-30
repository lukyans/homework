require 'pry'
card_number = "4929735477250543"
valid = false

puts card_number
sum = 0

num = (card_number[-2].to_i * 2)
if num > 9
    num -= 9
    sum += (num + card_number[-1].to_i)  
    else
      sum += (num + card_number[-1].to_i)
end


num = (card_number[-4].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-3].to_i)
  else
      sum += (num + card_number[-3].to_i)
end

num = (card_number[-6].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-5].to_i)
  else
      sum += (num + card_number[-5].to_i)
end

num = (card_number[-8].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-7].to_i)
  else
      sum += (num + card_number[-7].to_i)
end

num = (card_number[-10].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-9].to_i)
  else
      sum += (num + card_number[-9].to_i)
end

num = (card_number[-12].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-11].to_i)
  else
      sum += (num + card_number[-11].to_i)
end

num = (card_number[-14].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-13].to_i)
  else
      sum += (num + card_number[-13].to_i)
end

num = (card_number[-16].to_i * 2)
if num > 9
  num -= 9
  sum += (num + card_number[-15].to_i)
  else
      sum += (num + card_number[-15].to_i)
end

if sum % 10 == 0 #Luhn checksum mod 10:
puts "The number is valid!"
else
puts "The number is invalid!"
end
