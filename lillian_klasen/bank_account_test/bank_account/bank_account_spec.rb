require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        @account = BankAccount.new
    end

    it 'has a getter and setter for checking account balance' do
        @account.deposit("checking", 2000)
        expect(@account.checking_account).to eq(2000)
    end


    it 'has a getter method that retrieves the total account balance' do
        expect(@account.total_amount).to eq(0)
    end

    it 'has a function that allows the user to withdraw cash' do
        @account.deposit("checking", 1000)
        @account.withdraw("checking", 500)
        expect(@account.checking_account).to eq(500)
    end

    it 'raises an error if user tries to withdraw more money than they have in the account' do
        expect(@account.withdraw("checking", 1000)).to eq("You can not withdraw more than what is in your checking account")
    end

    it 'raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect{@account.self.total_accounts}.to raise_error(NoMethodError)
    end

    it 'raises an error when the user attempts to set the interest rate' do
        expect{@account.interest_rate = 0.2}.to raise_error(NoMethodError)
    end
end
