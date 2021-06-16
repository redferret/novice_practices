require './lib/person'

mr_smith = Person.new('Mr. Smith', 120, 50)

puts "Mr. Smith buys a snack at the store with his debit card... they have $#{mr_smith.debit_card_amount} on their debit card."

snack_cost = 5
mr_smith.charge_debit_card(snack_cost)

puts "Mr. Smith spends $#{snack_cost} and now has $#{mr_smith.debit_card_amount} on their debit card."

new_shoes_price = 75
puts "Mr. Smith buys a new pair of shoes with cash... they have $#{mr_smith.cash_in_wallet} in cash."

mr_smith.remove_cash(new_shoes_price)
puts "Mr. Smith spends $#{new_shoes_price} and now has $#{mr_smith.cash_in_wallet} in cash now."

