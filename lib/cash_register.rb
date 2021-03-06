require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :price, :last_transaction

    def initialize ( discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @price = []
    end
# binding.pry

def add_item (title, price, quantity = 1)
    #binding.pry
    self.total += price * quantity
    quantity.times do 
        items << title 
    end
end
    def apply_discount
       if discount != 0
        #self.total = items.inject {|sum, item| discount + item.total}
        #binding.pry
        self.total = total * ((100-discount)/100.00)
        "After the discount, the total comes to $#{self.total.to_i}."
       else
        "There is no discount to apply."
       end
    end

#     describe '#void_last_transaction' do
#     it 'subtracts the last item from the total' do
#       cash_register.add_item("apple", 0.99)
#       cash_register.add_item("tomato", 1.76)
#       cash_register.void_last_transaction
#       expect(cash_register.total).to eq(0.99)
#     end

#     it 'returns the total to 0.0 if all items have been removed' do
#       cash_register.add_item("tomato", 1.76, 2)
#       expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(3.52).to(0.0)
#     end
#   end
# end
def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end

