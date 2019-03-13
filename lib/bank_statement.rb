require_relative 'bank_account'

class BankStatement
  def header
    'date || credit || debit || balance'
  end

  def print(account)
    puts header
    account.transactions.each { |a, b, c, d|
    puts a + "  ||  " + b.to_s + "  ||  " + c.to_s + "  ||  " + d.to_s
    }
  end
end
