class BankAccount
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
        puts @checking_account = checking_account
        self
    end

    def savings_account
        puts @savings_account = savings_account
        self
    end

    def deposit(account, amount)
        if (account == "checking")
            @checking_account += amount
        elsif (account == "savings")
            @savings_account += amount
        end
        self
    end

    def withdraw(account, amount)
        if (account == "savings")
            if (@checking_account > amount)
                @checking_account -= amount
            else
                puts "You can not withdraw more than what is in your #{account}"
        end

        elsif (account == "savings")
            if (@savings_account > amount)
                @savings_account -= amount
            else
                puts "You can not withdraw more than what is in your #{account}"
            end
        end
        self
    end

    def total_amount
        @total_amount = @savings_account + @checking_account
        self
    end

    def account_info
        puts "BANKING INFO: Account Number: #{@account_number} ... Total Monies: #{@total_amount} ... Checking Account Balance: #{@checking_account} ... Savings Account Balance: #{@savings_account} ... Interest Rate #{@interest_rate}"
    end

end

account = BankAccount.new
account.account_number.deposit("checking", 300).deposit("savings", 500).withdraw("checking", 500).total_amount.account_info
