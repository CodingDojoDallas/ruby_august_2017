class BankAccount

	attr_accessor :account_number, :savings_account, :checking_account

	@@bank_accounts = 0
	def initialize
		@account_number = generate_number
		@checking_account = 0
		@savings_account = 0
		@@bank_accounts += 1
		@interest_rate = 0.01
	end

	def deposit(account, amount)
		if account == "checking"
			@checking_account += amount
		else
			@savings_account += amount
		end
		return self
	end

	def withdrawl(account, amount)
		if account == "checking"
			if @checking_account - amount < 0
				p "Insufficient funds"
			else 
				@checking_account -= amount
			end
		else
			if @savings_account - account < 0
				p "Insufficient funds"
			else
				@savings_account -= amount
			end
		end
		return self
	end

	def total
		"Checking balance: #{@checking_account}"
		"Saving balance: #{@savings_account}"
		"Total: #{@checking_account + @savings_account}"
		return self
	end

	def account_information
		"Account Number: #{@account_number}"
		"Interest Rate: #{@interest_rate} #{self.total}"
		return self
	end

	def self.number_of_accounts
		@@bank_accounts
		return self
	end

	private
		def generate_number
			Array.new(10).map {rand(1..9)}.join
		end
end

account = BankAccount.new
account.deposit("checking",10)
account.deposit("savings", 100)
account.withdrawl("chcecking", 3)
p account.account_information