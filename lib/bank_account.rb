require 'date'

class BankAccount

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount, date = Date.today)
    @balance += amount
    deposit_date = date_format(date.to_s)
    save_deposit(deposit_date, amount, @balance)
  end

  def withdraw(amount)
    fail "Insufficient funds" if @balance < amount
    @balance -= amount
    save_withdrawal(amount, @balance)
  end

  def save_deposit(deposit_date, amount, balance)
    @transactions.push([deposit_date, amount, nil, balance])
  end

  def save_withdrawal(amount, balance)
    @transactions.push([amount, balance])
  end

  def date_format(date)
    date2 = DateTime.parse(date)
    transaction_date = date2.strftime("%d/%m/%Y")
  end

end
