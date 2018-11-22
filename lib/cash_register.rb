
require 'pry'
class CashRegister
  attr_accessor :total

  def initialize(total = 0, *employee_discount)
    @total = total
  end
end
kroger = CashRegister.new
#binding.pry
