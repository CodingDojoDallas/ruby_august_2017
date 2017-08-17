require_relative 'account'
RSpec.describe BankAccount do
  before(:each) do
    @account1 = BankAccount.new(1)
  end

  it 'has a getter method for the account balance attribute' do
    expect(@account1.checking).to eq(0)
  end

  it 'has a getter method for the total account balance attribute' do
    expect(@account1.account_information).to eq("Account number is 1, checking balance is
    0, saving balance is 0, total balance is
    0, interest rate is 0.01.")
  end

  it 'has a method for the user to withdraw cash' do
    @account1.withdraw(100, 'saving')
    expect(@account1.saving).to eq(0)
  end

  # it 'raises an error when user tries to withdraw more money than they have in acct' do
  #
  # end

  it 'raises an error if user tries to retrieve number of bank accounts' do
    expect{@account1.bank_accounts}.to raise_error(NoMethodError)
  end

  it 'raises an error if user tries to set the interest rate' do
    expect{@account1.interest_rate}.to raise_error(NoMethodError)
  end

end
