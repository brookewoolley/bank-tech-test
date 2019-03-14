require 'bank_account'
require 'bank_statement'

RSpec.describe BankAccount do
  it 'can deposit, withdraw and print a statement' do
    statement = BankStatement.new
    account = BankAccount.new
    account.deposit(1000, "08-03-2019")
    account.withdraw(80, "09-03-2019")
    account.deposit(20, "13/03/2019")
    account.withdraw(10, "13/03/2019")
    expect { statement.print(account) }.to output(
      "date || credit || debit || balance\n13/03/2019  ||    ||  10.00  ||  930.00\n13/03/2019  ||  20.00  ||    ||  940.00\n09/03/2019  ||    ||  80.00  ||  920.00\n08/03/2019  ||  1000.00  ||    ||  1000.00\n"
    ).to_stdout
  end
end
