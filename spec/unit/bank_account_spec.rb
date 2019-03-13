require 'bank_account'

RSpec.describe BankAccount do

  describe '#deposit' do
    it 'can update the balance and take date argument' do
      expect { subject.deposit(1000, '10-01-2017') }.to change { subject.balance }.by(1000)
    end

    it 'can update the balance without date argument' do
      expect { subject.deposit(1000) }.to change { subject.balance }.by(1000)
    end

  end

  describe '#withdraw' do
    it 'can update the balance and take date argument' do
      subject.deposit(1000)
      expect { subject.withdraw(500, '11-03-2017') }.to change { subject.balance }.by(-500)
    end

    it 'can update the balance without date argument' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect { subject.withdraw(500) }.to change { subject.balance }.by(-500)
    end

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
