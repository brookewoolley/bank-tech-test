require 'bank_account'
require 'bank_statement'

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
  end
end
