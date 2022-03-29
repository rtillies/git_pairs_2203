require 'pry'
require 'rspec'
require './lib/bank_account'

describe BankAccount do
  it '1. exists' do
    checking = BankAccount.new(123, '0987', 250.0)

    expect(checking).to be_an BankAccount
  end

  it '2. has attributes' do
    checking = BankAccount.new(123, '0987', 250.0)

    expect(checking.account_number).to eq 123
    expect(checking.secret_code).to eq '0987'
    expect(checking.balance).to eq 250.0
  end

  it '3. can deposit money' do
    checking = BankAccount.new(123, '0987', 250.0)
    checking.deposit(100.0)

    expect(checking.balance).to eq 350.0
  end

  it '4. can withdraw money' do
    checking = BankAccount.new(123, '0987', 250.0)
    checking.withdraw(55.0)

    expect(checking.balance).to eq 195.0
  end

  it '5. cannot overdraw account' do
    checking = BankAccount.new(123, '0987', 250.0)
    checking.withdraw(255.0)
    expect(checking.balance).to eq 250.0

    savings = BankAccount.new(567, '2468', 500.0)
    savings.withdraw(200.0)
    savings.withdraw(200.0)
    savings.withdraw(200.0) # would overdraft
    expect(savings.balance).to eq 100.0
  end

  xit '6. can verify account details' do
    checking = BankAccount.new(123, '0987', 250.0)
    savings = BankAccount.new(567, '2468', 500.0)
    id = 123; pin = '0987'

    expect(checking.verify?(id, pin)).to eq true
    expect(savings.verify?(id, pin)).to eq false
  end
end
