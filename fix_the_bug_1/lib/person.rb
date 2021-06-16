class Person
  attr_reader :name, :cash_in_wallet, :debit_card_amount

  def initialize(name, cash_in_wallet = 0, debit_card_amount = 0)
    @name = name
    @cash_in_wallet = cash_in_wallet
    @debit_card_amount = debit_card_amount
  end

  def remove_cash(cash_amount)
    @cash_in_wallet -= cash
  end

  def add_cash(cash_amount)
    @cash_in_wallet = @cash_in_wallet + cash_amount
  end

  def carge_debit_card(charge_amount)
    @debit_card_amount -= charge_amount
  end

  def credit_debit_card(credit_amount)
    @debit_card_amount += credit_amount
  end

  def wallet_value
    @cash + credit_card_amount
  end
end
