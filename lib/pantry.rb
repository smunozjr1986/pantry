require 'pry'

class Pantry

  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item)
    @stock[item] = 0
  end

  def restock(item, amount)
    @stock[item] = amount

  end


end
