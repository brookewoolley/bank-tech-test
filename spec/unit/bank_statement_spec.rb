require 'bank_statement'

RSpec.describe BankStatement do

  describe 'print' do
    it 'can print the header' do
      expect(subject.header).to eq("date || credit || debit || balance")
    end
  end

  end
