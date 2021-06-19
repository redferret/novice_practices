require 'rspec'
require './lib/change_machine'

RSpec.describe ChangeMachine do
  describe 'class,' do
    it 'tests that ChangeMachine exists' do
      change_machine = ChangeMachine.new(10)
      expect(change_machine).is_a? ChangeMachine
    end
  end

  describe 'instance,' do
    before :each do
      @change_machine = ChangeMachine.new(10.00)
    end

    describe '#calculate_change' do
      it 'returns 1 if the amount due is equal to the denomination' do

        # Write a stub on equal_amount_to_denomination
        allow(@change_machine).to receive(:equal_amount_to_denomination).and_return(1)

        denomination = 10
        expected_result = 1
        actual_result = @change_machine.calculate_change(denomination)

        # This allows us to test more about calculate_change and how it invokes the stubbed method.
        expect(@change_machine).to have_received(:equal_amount_to_denomination).with(denomination)
        expect(actual_result).to eq expected_result
      end

      it 'counts the number of denominations out if amount due is greater than the denomination' do

        # Write the next stubbed method here based on the given case

        denomination = 5
        expected_result = 2
        actual_result = @change_machine.calculate_change(denomination)

        # Write an expectation that the method we want stubbed was invoked with a given amount

        expect(actual_result).to eq expected_result
      end

      it 'returns 0 if the denomination is greater than the amount due' do


        expected_result = 0
        actual_result = @change_machine.calculate_change(50)

        # Bonus: Try to write two expectations that equal_amount_to_denomination and count_number_of_denominations
        # were never invoked. Hint: you'll need to use to_not matcher and also stub these methods.

        expect(actual_result).to eq expected_result
      end
    end
  end
end
