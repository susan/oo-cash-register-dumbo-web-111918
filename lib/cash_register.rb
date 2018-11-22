
require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(total = 0, *employee_discount = 20)
    @total = total
    @employee_discount = employee_discount
  end

  # def discount
  #   @employee_discount
  # end

end
#cash_register = CashRegister.new
#cash_register_with_discount = cash_register.discount
#binding.pry
