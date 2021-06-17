require 'rspec'
require './lib/abstract'

RSpec.describe Abstract do
  describe '#new' do
    it 'tests that Abstract exists' do
      abstract = Abstract.new
      expect(abstract).is_a? Abstract
    end
  end
end
