# require 'bank_statement'
#
# RSpec.describe BankStatement do
#   xdescribe 'bank statement feature test' do
#       it 'user can deposit, withdraw and print a statement' do
#         statement = BankStatement.new
#         statement.deposit(1000)
#         expect(statement.balance).to eq(1000)
#         statement.deposit(2000)
#         statement.withdraw(500)
#         expect(statement.balance).to eq(2500)
#         expect(statement.print).to eq "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"
#       end
#   end
# end
