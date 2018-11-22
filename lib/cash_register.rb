
require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :title, :price, :quantity, :list, :last_transaction

  def initialize(total = 0, *employee_discount)
    @total = total
    @employee_discount = employee_discount
    @employee_discount = 20
    @list = list
    @list = []

  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
     
    item_subtotal = price * quantity
    self.total=(self.total + item_subtotal)

    
end
      #binding.pry

  def apply_discount
    if !employee_discount
      puts "There is no discount"
    else
      discount = (self.employee_discount/100.0)
      item_discounted = self.add_item(title, price) * (1 - discount)
    end
  end



  def items
    @list.flat_map { |item| [item] * quantity}
    
  

  def void_last_transaction
    self.total=(self.total - add_item(title, price, quantity = 1))
  end

end
cash_register = CashRegister.new
cash_register = cash_register.discount
#sum = cash_register.apply_discount
#binding.pry
