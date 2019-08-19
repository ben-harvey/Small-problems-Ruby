require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @transaction = Transaction.new(20)
    @register = CashRegister.new(100)
    @transaction.amount_paid = 100
  end

  def test_accept_money
    previous = @register.total_money
    @register.accept_money(@transaction)
    assert_equal previous + @transaction.amount_paid, @register.total_money
  end

  def test_change
    assert_equal 80, @register.change(@transaction)
  end

end