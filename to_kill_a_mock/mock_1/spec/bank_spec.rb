require 'rspec'
require './lib/bank'

RSpec.describe Bank do
  describe '#new' do
    it 'tests that Bank exists' do
      bank = Bank.new
      expect(bank).is_a? Bank
    end
  end
end
