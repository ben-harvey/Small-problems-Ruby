require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    transaction = Transaction.new(20)
    register = CashRegister.new(100)
    transaction.amount_paid = 100
    previous = register.total_money
    register.accept_money(transaction)
    assert_equal previous + transaction.amount_paid, register.total_money
  end

end