require 'minitest/autorun'
require_relative '../code/ruby_intro'

class TC_Part_1 < MiniTest::Test

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
    assert_equal(-1, highest_frequency([]))
    assert_equal(1, highest_frequency([0,0,1,1,1,1,1,1,1,1,1,2,2,2]))
    assert_equal(2, highest_frequency([100,1,0,2,40,9,7,8,6,5,4,3,2,10,43,100,10,18]))
  end

  def test_check_sum
    assert_equal(false, check_sum?([], 100))
    assert_equal(false, check_sum?([1], 1))
    assert_equal(false, check_sum?([1], 10))
    assert_equal(true, check_sum?([100,1,0,2,40,9,7,8,6,5,4,3,2,10,43,100,10,18], 43))
    assert_equal(false, check_sum?([100,1,0,2,40,9,7,8,6,5,4,3,2,10,43,100,10,18], 250))
  end

  # # Fake test
  # def test_fail
  #   fail('Not implemented')
  # end
end