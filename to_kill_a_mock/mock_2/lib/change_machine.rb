class ChangeMachine
	attr_reader :cur_amount, :original_amount

  def initialize(amount_due)
    @cur_amount = amount_due
    @original_amount = amount_due
  end

  def calculate_change(for_denomination)
    if @cur_amount == for_denomination
      equal_amount_to_denomination for_denomination
    elsif @cur_amount > for_denomination
      count_number_of_denominations for_denomination
    else
      0
    end
  end

  private
  def equal_amount_to_denomination(for_denomination)
    @cur_amount = (@cur_amount - for_denomination).rount(2)
    return 1
  end

  def count_number_of_denominations(for_denomination)
    count = (@cur_amount / for_denomination).to_i
    @cur_amount = (@cur_amount - (count * for_denomination)).round(2)
    return count
  end
end
