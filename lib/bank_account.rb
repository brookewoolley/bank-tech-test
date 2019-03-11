class BankAccount

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Insufficient funds" if @balance < amount
    @balance -= amount
  end

end