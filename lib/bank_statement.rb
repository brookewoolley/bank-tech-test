class BankStatement
  def print(account)
    header
    transaction_format(account)
  end

  private

  def transaction_format(account)
    account.transactions.reverse_each do |transaction|
      puts transaction[:date] + '  ||  ' + transaction[:credit].to_s + '  ||  ' + transaction[:debit].to_s + '  ||  ' + transaction[:balance].to_s
    end
  end

  def header
    puts 'date || credit || debit || balance'
  end
end
