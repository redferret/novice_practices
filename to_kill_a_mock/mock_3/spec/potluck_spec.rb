require 'rspec'
require './lib/potluck'

RSpec.describe Potluck do
  describe 'class method,' do
    before :each do
      @potluck = Potluck.new('7-13-21')
    end

    describe '#new' do
      it 'tests that Potluck exists' do
        expect(@potluck).is_a? Potluck
      end
      
      it 'has a date' do
        expect(@potluck.date).to eq '7-13-21'
      end

      it 'has dishes' do
        expect(@potluck.dishes).to eq([])
      end
    end
  end

  describe 'instance method,' do
    before :each do
      @potluck = Potluck.new('7-13-21')
    end

    describe '#add_dish,' do

      it 'adds a dish to this pot luck' do
        # We don't need to are about the Dish class, we just need something that will be added to this potluck
        dish_1 = instance_double('Dish')
        dish_2 = instance_double('Dish')
        dish_3 = instance_double('Dish')

        expected_result = [dish_1, dish_2, dish_3]

        @potluck.add_dish(dish_1)
        @potluck.add_dish(dish_2)
        @potluck.add_dish(dish_3)

        # Attribute readers should not be stubbed, otherwise how would we knew we are mutating this data?
        actual_result = @potluck.dishes

        expect(actual_result).to eq expected_result
      end
    end

    describe '#get_all_from_category' do
      it 'returns all dishes with the given category' do
        dish_1 = instance_double('Dish', category: :appetizer)
        dish_2 = instance_double('Dish', category: :appetizer)
        dish_3 = instance_double('Dish', category: :entre)

        @potluck.add_dish(dish_1)
        @potluck.add_dish(dish_2)
        @potluck.add_dish(dish_3)

        expected_result = [dish_1, dish_2]

        actual_result = @potluck.get_all_from_category(:appetizer)

        expect(actual_result).to eq expected_result
      end
    end

    describe '#menu' do
      it 'returns a menu as a hash with the category as a key as an array of dishes' do
        # This is a very special type of test that requires integration testing...
        # that is we don't want to stub get_all_from_category. If we stub this
        # it will be very complicated to setup the return data and it's better to go ahead and just create the mocks
        # we need but not stub the method this method invokes.
        # Usually you don't need to stub a method involved with lots if iterations, even though you can stub a method
        # with muliple iterations... it's just easier and cleaner to just go ahead and test with integration.

        dish_1 = instance_double('Dish', category: :appetizer)
        dish_2 = instance_double('Dish', category: :appetizer)
        dish_3 = instance_double('Dish', category: :entre)
        dish_4 = instance_double('Dish', category: :dessert)

        @potluck.add_dish(dish_1)
        @potluck.add_dish(dish_2)
        @potluck.add_dish(dish_3)
        @potluck.add_dish(dish_4)

        expected_result = {
          appetizer: [dish_1, dish_2],
          entre: [dish_3],
          dessert: [dish_4]
        }

        actual_result = @potluck.menu

        expect(actual_result).to eq expected_result
      end
    end

    describe '#ratio' do
      it 'returns the ratio of the category given to the total number of categories' do
        # Try to implement mocks and/or stubs to implement this method.
      end
    end
  end
end
