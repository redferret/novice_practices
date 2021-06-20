require 'rspec'
require './lib/dish'

RSpec.describe Dish do
  describe 'class,' do
    describe '#new' do
      it 'tests that Dish exists' do
        dish = Dish.new
        expect(dish).is_a? Dish
      end
    end
  end
end
