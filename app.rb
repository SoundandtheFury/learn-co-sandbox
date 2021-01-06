# Greet the user - get the user age - 
puts "Welome to the Rental Car Fee Checker! To begin, please enter your age."
age = gets.strip.to_i
puts "You entered #{age}"
# if age is less than 21 - tell the user they can't rent - 
minimum_age = 21
fee_free_age = 25
if age < minimum_age
  puts "Sorry, you're too young. You need to be at least #{minimum_age} years old."
elsif age >= fee_free_age
  puts "Because you are 25 or older you are able to rent without additional fees. Yay"
else
  puts "Because you are 25 or younger there may be additional fees based on your state."
  puts "Please enter the two character abbreviation for your state."
  us_state = gets.strip.upcase
  puts "You entered #{us_state}"
  states_with_fees = ["MI","NY"]
  puts states_with_fees[1]
  states_with_fees.each |fee_state|
    if us_state = fee_state
      puts "You happen to live in a state that requires extra fees."
  end
end
 
# otherwise - ask their state and how many days they are renting - 
# set fee to be number of days times fee per day - 
  # if they are in michigan - add 20 - 
  # if they are in NY - add 25 - 
# tell the user their total fee