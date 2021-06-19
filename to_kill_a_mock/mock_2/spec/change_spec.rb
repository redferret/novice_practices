require 'rspec'
require './lib/change'

RSpec.describe Change do
  describe '#new' do
    it 'tests that Change exists' do
      change = Change.new
      expect(change).is_a? Change
    end
  end
end
