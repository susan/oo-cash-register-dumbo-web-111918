
require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount

  def initialize(total = 0, *employee_discount)
    @total = total
    @employee_discount = employee_discount
    @employee_discount = 20
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
      item_subtotal = price * quantity
      self.total=(self.total + item_subtotal)
  end

  def apply_discount
    self.total=(self.total * (100 - self.employee_discount)/100)
  end
end
#cash_register = CashRegister.new
#cash_register_with_discount = cash_register.discount
#binding.pry
