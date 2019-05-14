class CashRegister
attr_accessor :total, :discount, :last_transcation, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []

end

  def add(item_name, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
        @items << item_name
        i += 1
      end
    else
      @items << item_name
    end
    @total += price*quantity
    @last_transcation = @total
    @total
  end

  def apply_discount()
    if @discount > 0
      @discount  = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes out to be $#{@total.to_i}."
    else
      "There is no discount to apply"
    end
  end

def void_last_transaction()
  @total -= @last_transcation
end



























end
