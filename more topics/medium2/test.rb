require 'minitest/autorun'

require_relative('cash_register')
require_relative('transaction')

class CashRegisterTest < Minitest::Test
  def setup
    @transaction = Transaction.new(20)
    @register = CashRegister.new(50)
    @transaction.amount_paid = 30
  end

  def test_accept_money
    @register.accept_money(@transaction)
    assert_equal(80, @register.total_money)
  end

  def test_change
    assert_equal(10, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $20.\n") {@register.give_receipt(@transaction)}
  end

  def test_prompt_for_payment
    io = StringIO.new
    io.write(30)
    io.rewind
    transaction = Transaction.new(20)
    transaction.prompt_for_payment(input: io)
    assert_equal(30, transaction.amount_paid)
  end
end