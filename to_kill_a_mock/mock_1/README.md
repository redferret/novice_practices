### To Kill a Mock (Lvl 1)

You are given a task to write tests for the Bank class. (The bank is fully implemented so that your tests will pass but pretend that it doesn't exist yet to get into the mindset of TDD.)

The big hurdle is a fellow team member you are working with is also working on the same project and you both need to work in parallel to meet the strict time requirements to develop the application.

This raises an issue. The Client class is not implemented yet on your end. You're only given an overview of what the Client class will look like. This forces you to use mocks and stubs to isolate and test your Bank class without having the need to use the Client class.

There is 1 test written for the Bank class already done for you. Use it as an example to help with your next test.

#### Client Class
Don't implement this class. The IP below just shows all the methods and attributes a Client class will have and you can infer how to mock and stub the Client class.

```rb
pry(main)> name = 'Megan'
# => "Megan"

pry(main)> account_type = :personal
# => :personal

pry(main)> initial_account_deposits = {savings: 23100, checking: 1000}
# => {:savings=>23100, :checking=>1000}

pry(main)> client = Client.new(name, account_type, initial_account_deposits)
# => #<Client:0x00007fb56a3d0e88 @accounts={:savings=>23100, :checking=>1000}, @account_type=:personal, @name="Megan">

pry(main)> client.name
# => "Megan"

pry(main)> client.account_type
# => :personal

pry(main)> client.account_names
# => [:savings, :checking]

pry(main)> client.sum_of_all_accounts
# => 24100

```
