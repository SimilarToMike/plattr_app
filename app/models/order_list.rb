class OrderList < ApplicationRecord
    has_many :order_itemlists
    before_save :set_subtotal



    def subtotal
        order_itemlists.collect{|order_itemlist| order_itemlist.valid? ? order_itemlist.unit_price*order_itemlist.quantity : 0}.sum
    end



    private

    def set_subtotal
        self[:subtotal] = subtotal

    end

end
