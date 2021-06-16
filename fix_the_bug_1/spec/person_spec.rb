require 'rspec'
require './lib/person'

RSpec.describe Person do
  describe 'class,' do
    describe '::new' do

      before :each do
        @person = Person.new('Bob')
      end

      it 'tests that the Person exists' do
        expect(@person).is_a? Person
      end

      it 'initially has no cash_in_wallet' do
        expect(@person.cash_in_wallet). to eq 0
      end

      it 'has a name' do
        expect(@person.name).to eq 'Bob'
      end
    end
  end

  describe 'instance,' do

    before :each do
      initial_cash_amount = 100
      initial_debit_card_amount = 200

      @person = Person.new('Smith', initial_cash_amount, initial_debit_card_amount)
    end

    describe '#add_cash' do
      it 'adds the given amount of cash to this person\'s wallet' do
        @person.add_cash(120)
        expect(@person.cash_in_wallet).to eq 220
      end
    end

    describe '#remove_cash' do
      it 'removes the given amount of cash from this person\' wallet' do
        @person.remove_cash(50)
        expect(@person.cash_in_wallet).to eq 50
      end
    end
    
    describe '#credit_debit_card' do
      it 'adds the given amount to this person\'s debit card' do
        @person.credit_debit_card(100)
        expect(@person.debit_card_amount).to eq 300
      end
    end

    describe '#charge_debit_card' do
      it 'removes the given amount from this person\' debit card' do
        @person.charge_debit_card(50)
        expect(@person.debit_card_amount).to eq 150
      end
    end

    describe '#wallet_value' do
      it 'gets the total amount of cash from this person' do
        expect(@person.wallet_value).to 300
      end
    end
  end
end