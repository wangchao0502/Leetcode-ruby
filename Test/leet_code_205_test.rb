require 'test/unit'
require '../Code/leet_code_205'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_205.new
  end

  def test_ab_aa
    assert_equal(false, @obj.is_isomorphic('ab', 'aa'))
  end

  def test_abab_baba
    assert_equal(true, @obj.is_isomorphic('abab', 'baba'))
  end

  def test_a_b
    assert_equal(true, @obj.is_isomorphic('a', 'b'))
  end

  def test_paper_title
    assert_equal(true, @obj.is_isomorphic('title', 'paper'))
  end

  def test_long
    str1 = "qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?qwertyuiop[]\\\";lkjhgfdsazxcvbnm,./`1234567890-=+_)(*&^%$#@!~QWERTYUIOP{}|':LKJHGFDSAZXCVBNM<>?"
    str2 = str1
    assert_equal(true, @obj.is_isomorphic(str1, str2))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end