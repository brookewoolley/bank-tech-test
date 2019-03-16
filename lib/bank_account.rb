require 'date'
require 'currency_format'
require 'date_format'

class BankAccount
  attr_reader :balance, :transactions

  def initialize(balance = 0, date_format = DateFormat.new,
                 currency_format = CurrencyFormat.new)
    @balance = balance
    @transactions = []
    @date_format = date_format
    @currency_format = currency_format
  end

  def deposit(amount, date = Date.today)
    @balance += amount
    save_deposit(@date_format.format(date), amount, @balance)
  end

  def withdraw(amount, date = Date.today)
    raise 'Insufficient funds' if @balance < amount

    @balance -= amount
    save_withdrawal(@date_format.format(date), amount, @balance)
  end

  private

  def save_deposit(deposit_date, amount, balance)
    @transactions.push(date: deposit_date, credit: @currency_format.format(amount),
                       debit: nil, balance: @currency_format.format(balance))
  end

  def save_withdrawal(withdrawal_date, amount, balance)
    @transactions.push(date: withdrawal_date, credit: nil,
                       debit: @currency_format.format(amount),
                       balance: @currency_format.format(balance))
  end
end
