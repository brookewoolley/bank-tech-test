require 'bank_statement'
require 'bank_account'

RSpec.describe BankStatement do
  describe 'print' do
    let(:account) { instance_double('Account', transactions: [{ date: '12/03/2019', credit: '100.00', debit: nil, balance: '100.00' }]) }

    it 'can print the transactions' do
      statement = BankStatement.new
      expect { statement.print(account) }.to output(
        "date || credit || debit || balance\n12/03/2019  ||  100.00  ||    ||  100.00\n"
      ).to_stdout
    end
  end
end
