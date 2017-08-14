class BankAccount
    attr_reader :account_number, :checking_account, :savings_account, :total_amount, :interest_rate, :total_accounts
    @@total_accounts = 0

    def initialize
        @account_number = 0
        @checking_account = 0
        @savings_account = 0
        @total_amount = 0
        @interest_rate = 0.01
        @@total_accounts += 1
    end

    def account_number
        puts @account_number = Random.rand(10 ** 10)
        self
    end


    def checking_account
        return @checking_account
    end

    def savings_account
        puts @savings_account
        self
    end

    def deposit(account, amount)
        if (account == "checking")
            @checking_account += amount
            return @checking_account
        elsif (account == "savings")
            @savings_account += amount
            return @savings_account
        end

    end

    def withdraw(account, amount)
        if (account == "checking")
            if (@checking_account > amount)
                @checking_account -= amount
                return @checking_account
            else
                return "You can not withdraw more than what is in your #{account} account"
        end

        elsif (account == "savings")
            if (@savings_account > amount)
                @savings_account -= amount
                return @savings_account
            else
                return "You can not withdraw more than what is in your #{account} account"
            end
        end
    end

    def total_amount
        return @total_amount = @savings_account + @checking_account
    end

    def account_info
        puts "BANKING INFO: Account Number: #{@account_number} ... Total Monies: #{@total_amount} ... Checking Account Balance: #{@checking_account} ... Savings Account Balance: #{@savings_account} ... Interest Rate #{@interest_rate}"
    end

    def self.total_accounts
        return @@total_accounts
    end
end
