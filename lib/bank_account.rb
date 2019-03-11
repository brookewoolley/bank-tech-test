class BankAccount

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    save_deposit(amount, @balance)
  end

  def withdraw(amount)
    fail "Insufficient funds" if @balance < amount
    @balance -= amount
    save_withdrawal(amount, @balance)
  end

  def save_deposit(amount, balance)
    @transactions.push([amount, balance])
  end

  def save_withdrawal(amount, balance)
    @transactions.push([amount, balance])
  end

end
