class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = Array.new # or just []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu 
    @dishes.each_with_object(Hash.new) do |dish, menu_as_h|
      menu_as_h[dish.category] = get_all_from_category(dish.category)
    end
  end

  def ratio
  end
end
