require 'bank_statement'

RSpec.describe BankStatement do
  describe '#transactions' do
      it 'can accept a transaction' do
        expect(subject.transactions).to be_a(Array)
      end
    end
  end
