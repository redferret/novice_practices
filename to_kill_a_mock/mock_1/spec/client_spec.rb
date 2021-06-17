require 'rspec'
require './lib/client'

RSpec.describe Client do
  describe '#new' do
    it 'tests that Client exists' do
      client = Client.new
      expect(client).is_a? Client
    end
  end
end
