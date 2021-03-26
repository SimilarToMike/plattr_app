class OrderItemlist < ApplicationRecord
    belongs_to :OrderList
    belongs_to :records


    def unit_price
        if persisted?
            self[:unit_price]
        else
            record.price
        end
    end


    def total
        unit_price * quantity
    end


    private

    def set_unit_price
        set[:total] = total * quantity
    end
    
end
