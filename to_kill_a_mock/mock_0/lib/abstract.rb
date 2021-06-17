class Abstract
  attr_reader :variable

  def initialize(some_value)
    @variable = some_value
  end

  def abstract_method_1
    abstract_method_2 % 2 == 0
  end

  def abstract_method_2
    temp = @variable
    @variable = @variable + temp % 255
    @variable = (@variable + temp % 255) << 10
  end

  def abstract_method_3
    # Your implementation here
  end
end
