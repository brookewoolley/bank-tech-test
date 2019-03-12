require 'bank_account'

RSpec.describe BankAccount do
  describe '#balance' do
    it 'can show the total' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'can update the balance' do
      subject.deposit(1000, '10-01-2017')
      expect(subject.balance).to eq(1000)
    end
  end

  describe '#withdraw' do
    it 'can update the balance' do
      subject.deposit(1000, '10-02-2017')
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end

    it 'can check for sufficient funds' do
      expect { subject.withdraw(20) }.to raise_error 'Insufficient funds'
    end
  end

  describe '#transactions' do
    it 'can accept a transaction' do
      expect(subject.transactions).to be_a(Array)
    end

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

  describe '#date_format' do
    it 'can format a date input' do
      allow(Date).to receive(:today).and_return('11-03-2018')
      expect(subject.date_format(Date.today)).to eq('11/03/2018')
    end
  end

  describe '#currency_format' do
    it 'can format a deposit or withdrawal to 2 decimal places' do
      expect(subject.currency_format(200)).to eq("200.00")
    end
  end
end
