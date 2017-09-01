require 'test/unit'
require_relative '../code/ruby_intro'

class TC_Part_1 < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  def test_uniq_func
    assert_equal(0, unique_total([]))
    assert_equal(1, unique_total([1]))
    assert_equal(1, unique_total([1,1,1,1,1,1]))
    assert_equal(15, unique_total([1,2,3,4,5]))
    assert_equal(45, unique_total([1,1,2,3,3,4,5,6,7,8,9,0]))
  end

  def test_freq

  end

  def test_check_sum

  end

  # # Fake test
  # def test_fail
  #   fail('Not implemented')
  # end
end