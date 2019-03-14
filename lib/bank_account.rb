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
    raise 'Insufficient funds' if @balance < amount

    @balance -= amount
    save_withdrawal(date_format(date), amount, @balance)
  end

  private

  def save_deposit(deposit_date, amount, balance)
    @transactions.push(date: deposit_date, credit: currency_format(amount),
                       debit: nil, balance: currency_format(balance))
  end

  def save_withdrawal(withdrawal_date, amount, balance)
    @transactions.push(date: withdrawal_date, credit: nil,
                       debit: currency_format(amount),
                       balance: currency_format(balance))
  end

  def date_format(date)
    date_to_format = DateTime.parse(date.to_s)
    date_to_format.strftime('%d/%m/%Y')
  end

  def currency_format(amount)
    '%.2f' % amount
  end
end
