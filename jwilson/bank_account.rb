
class BankAccount
    attr_accessor :checking, :savings, :account_number
    @@accounts = 0;
    def initialize
        @checking = 0
        @savings = 0
        @interest = 0.01
        @account_number = create_account
        @@accounts += 1
    end

    def show_acct
        p "Your account number is #{@account_number}."
        self
    end

    def display(account)
        if account == "checking"
            p "You have $#{@checking} in your checking account"
            self
        else
            p "You have $#{@savings} in your savings account"
            self
        end
    end

    def withdrawl(num, account)
        if account == "checking"
            if @checking - num < 0
                p "You have insufficient funds in your #{account} account"
            end
        else
            if @savings - num < 0
                p "You have insufficient funds in your #{account} account"
            end
        end
    end

    def total_funds
        p "You have $#{@checking} in your checking account."
        p "You have $#{@savings} in your savings account."
        p "Your total funds available is $#{@savings + @checking}."
    end

    def account_info
        p "Your account number is: #{@account_number}. Your total funds available is $#{@savings + @checking}. You have $#{@checking} in your checking account. You have $#{@savings} in your savings account, accumulating interest at #{@interest}%."
    end
    
    def deposit(num, account)
        if account == "savings"
            @savings += num
            self
        elsif account == "checking"
            @checking += num
            self
        else
            p "Please select which account you wish to deposit to"
            self
        end

    end

    def self.total_accounts
        @@accounts
    end
    
    private
        def create_account
            Array.new(10).map { rand(1..9) }.join
        end
end

newAcct = BankAccount.new

newAcct.deposit(50, "checking" ).deposit(100, "savings")
newAcct.account_info

puts BankAccount.total_accounts