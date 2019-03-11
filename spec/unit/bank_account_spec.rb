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
  end
end
