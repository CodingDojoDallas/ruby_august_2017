class BankAccount
  # your code here

    @@number_of_accounts = 0
    attr_accessor :account_number, :checking, :saving
    

    def initialize
        @account_number = generate_account_number
        @saving = 0
        @checking = 0
        @total = 0
        @@number_of_accounts++
        @rate = 0.01
    end

    def display_account_number
        p "Account Number: #{@account_number}" 
        return self
        
    end

    def display_balance_checking
        p @checking
        return self
    end

    def display_balance_saving
        p @saving
        return self
    end

    def display_balance
        p @total
        return self
    end

    def deposit(account, amount)
        @checking += amount if account == "checking"
        @saving += amount if account == "saving"
        @total += amount 

        return self
        
    end

    def account_information
        puts "Account Number: #{@account_number}"
        puts "Total Balance: #{@total}"
        puts "-----Checking Balance: #{@checking}"
        puts "-----Saving Balance: #{@saving}"
        puts "Intrst Rate : #{@rate*100}%"

    end

    def withdrawl(account, amount)
        if account == "checking"
            if amount > @checking
                puts "Insufficient fund " 
                return self
            else 
                @checking -= amount
                @total -= amount 
            end
        end

        if account == "saving"
            if amount > @saving
                puts "Insufficient fund " 
                return self
            else 
                @saving-= amount
                @total -= amount 
            end
        end
        return self
    end

    private
        def generate_account_number
            account_number=""
            10.times {account_number << rand(10).to_s}
            return account_number
        end
    
end

Ians = BankAccount.new

Ians.deposit("checking", 5000)

Ians.deposit("saving", 50000)

Ians.withdrawl("checking", 1050)
Ians.withdrawl("saving", 9000)
Ians.withdrawl("checking", 10000000000)

Ians.account_information

