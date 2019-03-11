require 'bank_statement'

RSpec.describe BankStatement do
  describe '#balance' do
      it 'can show the total' do
      statement = BankStatement.new
      expect(statement.balance).to eq(0)
      end
  end
end
