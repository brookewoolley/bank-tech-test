require 'bank_account'

RSpec.describe BankAccount do

  describe '#withdraw' do
    it 'can check for sufficient funds' do
      expect { subject.withdraw(20) }.to raise_error 'Insufficient funds'
    end
  end

  describe '#transactions' do

    it 'can add a deposit transaction to list' do
      subject.deposit(200, '10-01-2012')
      subject.deposit(100, '13-01-2012')
      expect(subject.transactions[1]).to eq(['13/01/2012', '100.00', nil, '300.00'])
    end

    it 'can add a withdrawal transaction to list' do
      subject.deposit(1000, '10-02-2018')
      subject.withdraw(100, '11-02-2019')
      expect(subject.transactions[-1]).to eq(['11/02/2019', nil, '100.00', '900.00'])
    end
  end
end
