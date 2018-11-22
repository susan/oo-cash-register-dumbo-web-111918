
require 'pry'
class CashRegister
  attr_accessor :total

  def initialize(total = 0)
    @total = total
  end
end
binding.pry

kroger = CashRegister.new
