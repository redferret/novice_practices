require './lib/change_machine'

print 'Enter the amount due: '
amount_due = gets.chomp.to_f

print 'Enter the amount given: '
amount_given = gets.chomp.to_f

change_due = (amount_due - amount_given).round(2) * -1

puts "Change due: #{change_due}"

change_machine = ChangeMachine.new(change_due)

hundreds = change_machine.calculate_change(100)
fifties = change_machine.calculate_change(50)
twenties = change_machine.calculate_change(20)
tens = change_machine.calculate_change(10)
fives = change_machine.calculate_change(5)
ones = change_machine.calculate_change(1)

quarters = change_machine.calculate_change(0.25)
dimes = change_machine.calculate_change(0.10)
nickles = change_machine.calculate_change(0.05)
pennies = change_machine.calculate_change(0.01)

puts "-------------- Change Due --------------"
puts "Hundreds: #{hundreds}"
puts "Fifties:  #{fifties}"
puts "Twenties: #{twenties}"
puts "Tens:     #{tens}"
puts "Fives:    #{fives}"
puts "Ones:     #{ones}"
puts "Quarters: #{quarters}"
puts "Dimes:    #{dimes}"
puts "Nickles:  #{nickles}"
puts "Pennies:  #{pennies}"