require 'rspec'
require './lib/dish'

RSpec.describe Dish do
  describe 'class method,' do
    describe '#new' do
      before :each do
        @dish = Dish.new('Dish Name', :category)
      end
      it 'expects that a Dish exists' do
        expect(@dish).is_a? Dish
      end

      it 'has a name' do
        expect(@dish.name).to eq 'Dish Name'
      end

      it 'has a category' do
        expect(@dish.category).to eq :category
      end
    end
  end
end
