require 'minitest/autorun'

require_relative '8'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('text.rb', 'r')
  end

  def test_swap
    text = Text.new(@file.read)
    actual_text = text.swap('a', '@')
    expected_text = "Lorem ipsum dolor sit @met, consectetur @dipiscing elit. Cr@s sed vulput@te ipsum.\nSuspendisse commodo sem @rcu. Donec @ nisi elit. Null@m eget nisi commodo, volutp@t\nqu@m @, viverr@ m@uris. Nunc viverr@ sed m@ss@ @ condimentum. Suspendisse orn@re justo\nnull@, sit @met mollis eros sollicitudin et. Eti@m m@ximus molestie eros, sit @met dictum\ndolor orn@re bibendum. Morbi ut m@ss@ nec lorem tincidunt elementum vit@e id m@gn@. Cr@s\net v@rius m@uris, @t ph@retr@ mi."
    assert_equal expected_text, actual_text
  end

  def test_word_count
    text = Text.new(@file.read)
    assert_equal 72, text.word_count
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end

