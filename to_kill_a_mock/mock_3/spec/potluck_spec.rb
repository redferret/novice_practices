require 'rspec'
require './lib/potluck'

RSpec.describe Potluck do
  describe 'class,' do
    describe '#new' do
      it 'tests that Potluck exists' do
        potluck = Potluck.new
        expect(potluck).is_a? Potluck
      end
    end
  end
end
