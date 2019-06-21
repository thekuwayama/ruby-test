# frozen_string_literal: true

class TestIt < Minitest::Test

  require 'openssl'
  puts "  #{OpenSSL::OPENSSL_VERSION}  OPENSSL_VERSION",
       "  #{OpenSSL::OPENSSL_LIBRARY_VERSION}  OPENSSL_LIBRARY_VERSION"

  # https://github.com/ruby/openssl/issues/248
  def test_issue_248
    assert_raises(Exception) { OpenSSL::BN.new(nil, 2) }
  end

  def test_bn_initialize_with_nil
    assert_raises(Exception) { OpenSSL::BN.new(nil) }
  end

  def test_bn_initialize_without_arguments
    assert_raises(Exception) { OpenSSL::BN.new }
  end
end
