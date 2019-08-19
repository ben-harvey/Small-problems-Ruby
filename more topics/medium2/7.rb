require 'minitest/autorun'
require 'stringio'

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

  def test_give_receipt
    assert_output("You've paid $20.\n") { @register.give_receipt(@transaction) }
  end

end


class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(20)
    @register = CashRegister.new(100)
  end

  def test_prompt_for_payment
    input = StringIO.new('50')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal 50, @transaction.amount_paid
  end
end