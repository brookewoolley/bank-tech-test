require 'date'

class BankAccount

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount, date = Date.today)
    @balance += amount
    save_deposit(date_format(date), amount, @balance)
  end

  def withdraw(amount, date = Date.today)
    fail "Insufficient funds" if @balance < amount
    @balance -= amount
    save_withdrawal(date_format(date), amount, @balance)
  end

  def save_deposit(deposit_date, amount, balance)
    @transactions.push([deposit_date, amount, nil, balance])
  end

  def save_withdrawal(withdrawal_date, amount, balance)
    @transactions.push([withdrawal_date, nil, amount, balance])
  end

  def date_format(date)
    date_to_format = DateTime.parse(date.to_s)
    transaction_date = date_to_format.strftime("%d/%m/%Y")
  end

end
