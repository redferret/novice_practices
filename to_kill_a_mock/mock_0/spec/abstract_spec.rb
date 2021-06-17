require 'rspec'
require './lib/abstract'

RSpec.describe Abstract do
  describe 'class,' do
    it 'tests that Abstract exists' do
      abstract = Abstract.new(100)
      expect(abstract).is_a? Abstract
    end
  end

  describe 'instance,' do
    before :each do
      @abs = Abstract.new(144)
    end

    describe '#abstract_method_1' do
      it 'returns true if abstract_method_2 returns an even number' do
        # Since we want to ONLY test this method and we know we need to use another method
        # we should stub it to isolate our test.

        # It may seem redundant to do this, but when we do this we won't have to care at all
        # about the implementation details of `abstract_method_2` so we can just Stub it.
        allow(@abs).to receive(:abstract_method_2).and_return(22)

        expect(@abs.abstract_method_1).to eq true
      end

      it 'returns false if abstract_method_2 returns an odd number' do
        
        # ************** Setup this test using a stub on `abstract_method_2` **************

        expect(@abs.abstract_method_1).to eq false
      end
    end

    describe '#abstract_method_3' do
      it 'returns true if abstract_method_1 returns false' do
        # Write a test for the expected outcome of abstract_method_3 using a stub
        # Then implement the method to make the test pass

        expect(@abs.abstract_method_3).to eq true
      end

      it 'returns false if abstract_method_1 returns true' do
        # Write a test for the expected outcome of abstract_method_3 using a stub
        # Then implement the method to make the test pass

        expect(@abs.abstract_method_3).to eq false
      end
    end
  end
end
