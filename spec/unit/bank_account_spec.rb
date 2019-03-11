require 'bank_account'

RSpec.describe BankAccount do
  describe '#balance' do
      it 'can show the total' do
      expect(subject.balance).to eq(0)
      end
  end

  describe '#deposit' do
    it 'can update the balance' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end

  describe '#withdraw' do
    it 'can update the balance' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end

    it 'can check for sufficient funds' do
      expect{subject.withdraw(20)}.to raise_error "Insufficient funds"
    end
  end

  describe '#transactions' do
      it 'can accept a transaction' do
        expect(subject.transactions).to be_a(Array)
      end

      it 'can add a deposit transaction to list' do
        subject.deposit(100)
        expect(subject.transactions[0]).to eq([100, 100])
      end

      it 'can add a withdrawal transaction to list' do
        subject.deposit(1000)
        subject.withdraw(100)
        expect(subject.transactions[-1]).to eq([100, 900])
      end
    end
end
