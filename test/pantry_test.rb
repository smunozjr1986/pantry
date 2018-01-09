require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_if_instance_pantry_exist
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_checking_adding_stock
    pantry = Pantry.new
    result = pantry.stock

    assert_equal ({}), result
  end

  def test_for_stock_check
    pantry = Pantry.new
    result = pantry.stock_check("Cheese")

    assert_equal 0, result
  end

  def test_restock_cheese
    pantry = Pantry.new
    result = pantry.restock("Cheese", 10)
    pantry.stock_check("Cheese")

    assert_equal 10, result
  end

  def test_restock_more_cheese
    pantry = Pantry.new
    result = pantry.restock("Cheese", 20)
    pantry.stock_check("Cheese")

    assert_equal 30, result
  end

end
