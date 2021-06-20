class ChangeMachine
	attr_reader :change_due, :original_amount

  def initialize(change_due)
    @change_due = change_due
    @original_amount = change_due
  end

  def calculate_change(for_denomination)
    if @change_due == for_denomination
      equal_amount for_denomination
    elsif @change_due > for_denomination
      count_number_of_denominations for_denomination
    else
      0
    end
  end

  def equal_amount(to_denomination)
    @change_due = (@change_due - to_denomination).round(2)
    return 1
  end

  def count_number_of_denominations(for_denomination)
    count = (@change_due / for_denomination).to_i
    @change_due = (@change_due - (count * for_denomination)).round(2)
    return count
  end
end
