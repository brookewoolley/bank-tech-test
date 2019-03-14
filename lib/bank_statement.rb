class BankStatement

  def print(account)
    puts header
    account.transactions.reverse_each do |transaction|
      t_date = transaction.fetch(:date)
      t_credit = transaction.fetch(:credit)
      t_debit = transaction.fetch(:debit)
      t_balance = transaction.fetch(:balance)
      puts t_date + "  ||  " + t_credit.to_s + "  ||  " + t_debit.to_s + "  ||  " + t_balance.to_s
    end
  end

  private
  def header
    'date || credit || debit || balance'
  end
end
