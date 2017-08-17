class BankAccount
  attr_reader :account_number, :checking, :saving
  @@bank_accounts = 0

  def initialize(account_number)
    @account_number = account_number
    @checking = 0
    @saving = 0
    @@bank_accounts += 1
    @interest_rate = 0.01
  end

  def deposit(amount, acct_type)
    if type == 'saving' && amount === Number
      @saving += amount
    elsif type == 'checking' && amount === Number
      @checking += amount
    else
      print "Please enter a valid account type"
    end
    return self
  end

  def withdraw(amount, acct_type)
    if amount === Numeric && acct_type == 'saving'
      if @saving > amount
        @saving -= amount
        return @saving
      else
        print "Insufficient funds"
      end
    elsif amount === Numeric && acct_type == 'checking'
      if @checking >= amount
        @checking -= amount
        return @checking
      else
      print "Insufficient funds"
      end
    else
      print "Please enter a valid account type"
    end
  end

  def display_balance acct_type
    if acct_type == 'saving'
      print "Account balance is $#{@saving}"
    elsif acct_type == 'checking'
      print "Account balance is $#{@checking}"
    else
      print "Please enter a valid account type"
    end
  end

  def account_information
    "Account number is #{@account_number}, checking balance is
    #{@checking}, saving balance is #{@saving}, total balance is
    #{@checking + @saving}, interest rate is #{@interest_rate}."
  end

  def self.number_of_accounts
    @@bank_accounts
  end

  private
    def account_number
      Array.new(10).map { rand(1...9) }.join
    end
end
