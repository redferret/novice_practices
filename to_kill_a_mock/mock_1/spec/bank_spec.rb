require 'rspec'
require './lib/bank'

RSpec.describe Bank do
  describe 'class,' do
    describe '::new' do
      it 'tests that Bank exists' do
        bank = Bank.new('Bank Name')
        expect(bank).is_a? Bank
      end
    end
  end

  describe 'attributes,' do
    before :each do
      @bank = Bank.new('USBank')
    end

    it 'name exists' do
      expect(@bank.name).to eq 'USBank'
    end

    it 'clients exists' do
      expect(@bank.clients).to eq({})
    end
  end

  describe 'instance,' do
    before :each do
      @bank = Bank.new('USBank')
    end

    describe '#register_new_client' do
      it 'adds a new client to the bank based on their account type' do

        # The creation of a Mock. Because Client doesn't exist we use a String to give some information about what we are mocking.
        client_1 = instance_double('Client')
        client_2 = instance_double('Client')
        client_3 = instance_double('Client')

        # Stubbing account_type for our mocks because it doesn't exist yet
        allow(client_1).to receive(:account_type).and_return(:personal)
        allow(client_2).to receive(:account_type).and_return(:personal)
        allow(client_3).to receive(:account_type).and_return(:checking)

        # Additionally you can also Mock with instance data like this
        client_a = instance_double('Client', name: 'Megan')
        client_b = instance_double('Client', name: 'Mike')
        client_c = instance_double('Client', name: 'Rich')
        
        # When `register_new_client` is invoked, the method also invokes `client.account_type` which is why we need to stub it
        # Usually the implementation won't be written yet and this is where planning ahead is also important with TDD,
        # what external methods will be used? What internal methdos will be used?
        @bank.register_new_client(client_1)
        @bank.register_new_client(client_2)
        @bank.register_new_client(client_3)

        expected_result = {
          checking: [client_3],
          personal: [client_1, client_2]
        }
        
        actual_result = @bank.clients

        expect(actual_result).to eq expected_result
      end
    end

    describe '#sum_all_client_accounts' do
      it 'sums all accounts for all clients and returns this sum' do
        # - First identify the mock(s) you need
        # - Second what methods will this test for `sum_all_client_accounts` invoke (externally or internally)?
        # Externally would be your mock, internally would be methods inside the Bank class.

        # ********************** Write your mocks below here **************************

        # ********************** Write your stubs below here **************************

        # ******************* Write your test as normal below here ********************


        expected_result = 220_000 # you can change this number if you want based on your stubs
        actual_result = @bank.sum_all_client_accounts

        expect(actual_result).to eq expected_result
      end
    end
  end
end

