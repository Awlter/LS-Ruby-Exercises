require 'minitest/autorun'
require_relative 'secret_handshake'

class SecretHandshakeTest < Minitest::Test
  def test_get_binary_from_integer
    handshake = SecretHandshake.new(10)
    assert_equal '1010', handshake.num
  end

  def test_handshake_1_to_wink
    handshake = SecretHandshake.new(1)
    assert_equal ['wink'], handshake.commands
  end

  def test_handshake_10_to_double_blink
    handshake = SecretHandshake.new(2)
    assert_equal ['double blink'], handshake.commands
  end

  def test_handshake_11_to_double_blink
    handshake = SecretHandshake.new(3)
    assert_equal ['wink', 'double blink'], handshake.commands
  end
end
