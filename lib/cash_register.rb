

class CashRegister

    attr_accessor :total, :discount, :items
    

    def initialize (discount = 0)
       @discount = discount
       @total = 0
       @items = [ ];
       @last_transaction = 0
    end    

   def add_item (title, price, quantity=1)
        @last_transaction = price * quantity
        @total = total + @last_transaction
       
        
        quantity.times do
            @items << title
        end      


   end 

   def apply_discount
      if discount > 0
        @total = total - (total * (discount.to_f/100)).to_i
        p "After the discount, the total comes to $#{total}."
      else
        p  "There is no discount to apply."
      end    
   end 

   def void_last_transaction
       @total -= @last_transaction;   
   end 
end