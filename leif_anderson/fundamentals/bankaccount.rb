=begin
  bankaccount.rb leif anderson 8/1/17
=end

# all in one file for easy reading =p
#
class ManagedAccount
  attr_accessor :interest_rate
  def initialize
    @interest_rate = 0.001
  end
  def get_interest_rate
    @interest_rate
  end
  def set_interest_rate rate
    @interest_rate = rate
  end
  def display_account
    p "Interest Rate: #{self.get_interest_rate}"
  end
end # end the ManagedAccount Class

class Account < ManagedAccount
  attr_reader :account_number
  attr_reader :checking_balance
  attr_reader :savings_balance
  private def account_gen
    1 + rand(10000)
  end

  def initialize
    @account_number = account_gen
    @checking_balance = 0
    @savings_balance = 0
    super
  end
  def deposit_checking amount
    @checking_balance += amount
  end
  def deposit_savings amount
    @savings_balance += amount
  end
  def withdraw_checking amount
    amount > @checking_balance ? 'insufficient_funds' : @checking_balance -= amount
  end
  def withdraw_savings amount
    amount > @savings_balance ? 'insufficient_funds' : @savings_balance -= amount
  end
  def total_balances
    @checking_balance + @savings_balance
  end
  def display_account
    p "Account:       #{@account_number}"
    p "Checking:      #{@checking_balance}"
    p "Savings:       #{@savings_balance}"
    p "Total:         #{self.total_balances}"
    super
  end
end # end the Account Class

class Bank
  attr_accessor :accounts
  def initialize
    @accounts = []
  end
  def add_account *deposits
    account = Account.new
    account.deposit_checking(deposits[0])
    account.deposit_savings(deposits[1])
    @accounts.push(account)
  end
  def num_accounts
    accounts.count
  end
  def total_deposits
    total = 0
    for account in @accounts
      total += account.total_balances
    end
    total
  end
  def display_accounts
    for account in @accounts
      p ">>>"
      p account.display_account
      p "<<<"
    end
    p "Total Desposits at Coding Dojo Bank: #{self.total_deposits}"
  end
end

a = Account.new
a.deposit_checking(1000)
a.deposit_savings(500)
p a.withdraw_checking(10000)
a.display_account

b = Bank.new
b.add_account(1000, 500)
b.add_account(10000, 1000)
b.add_account(76.87, 100)
b.display_accounts
